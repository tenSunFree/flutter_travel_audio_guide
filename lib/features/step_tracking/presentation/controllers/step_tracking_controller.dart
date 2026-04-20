import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import '../../domain/entities/exercise_summary_data.dart';
import '../../domain/services/step_tracking_service.dart';
import '../enums/step_tracking_source.dart';

class StepTrackingState {
  const StepTrackingState({
    this.isAvailable = false,
    this.hasHealthConnectPermission = false,
    this.hasSensorPermission = false,
    this.source = StepTrackingSource.sensor, // 預設 sensor
    this.steps = 0,
    this.distance = 0.0,
    this.isTracking = false,
  });

  final bool isAvailable;
  final bool hasHealthConnectPermission;
  final bool hasSensorPermission;
  final StepTrackingSource source;
  final int steps;
  final double distance;
  final bool isTracking;

  // 方便外部判斷當前 source 是否已就緒
  bool get isReady => source == StepTrackingSource.sensor
      ? isAvailable && hasSensorPermission
      : isAvailable && hasHealthConnectPermission;

  StepTrackingState copyWith({
    bool? isAvailable,
    bool? hasHealthConnectPermission,
    bool? hasSensorPermission,
    StepTrackingSource? source,
    int? steps,
    double? distance,
    bool? isTracking,
  }) {
    return StepTrackingState(
      isAvailable: isAvailable ?? this.isAvailable,
      hasHealthConnectPermission:
          hasHealthConnectPermission ?? this.hasHealthConnectPermission,
      hasSensorPermission: hasSensorPermission ?? this.hasSensorPermission,
      source: source ?? this.source,
      steps: steps ?? this.steps,
      distance: distance ?? this.distance,
      isTracking: isTracking ?? this.isTracking,
    );
  }
}

class StepTrackingController extends StateNotifier<StepTrackingState> {
  StepTrackingController(this._service) : super(const StepTrackingState()) {
    _init();
  }

  final StepTrackingService _service;
  Timer? _timer;
  DateTime? _sessionStart;
  String? _guideName;

  Future<void> _init() async {
    final available = await _service.checkAvailability();
    state = state.copyWith(isAvailable: available);
    // Health Connect 權限
    var hcGranted = await _service.hasPermissions();
    if (!hcGranted) hcGranted = await _service.requestPermissions();
    state = state.copyWith(hasHealthConnectPermission: hcGranted);
    // Sensor 權限
    var sensorGranted = await _service.hasActivityRecognitionPermission();
    if (!sensorGranted) {
      sensorGranted = await _service.requestActivityRecognitionPermission();
    }
    state = state.copyWith(hasSensorPermission: sensorGranted);
  }

  /// Called by the detail page whenever playback transitions to playing.
  void onPlaybackStarted(String guideName) {
    if (!state.isReady) return;
    _guideName = guideName;
    if (state.source == StepTrackingSource.sensor) {
      if (_sessionStart == null) {
        _service.startStepSensorTracking(); // 新 session
      } else {
        _service
            .resumeStepSensorTracking(); // pause 後 resume → 但 Pigeon 沒有 resume
        // 實際上 startStepSensorTracking 每次都從 0 開始，
        // pause/resume 應改呼叫對應方法（見下方說明）
      }
    }
    _sessionStart ??= DateTime.now();
    _startTimer();
    // if (!state.isAvailable || !state.hasPermission) return;
    // _guideName = guideName;
    // _sessionStart ??= DateTime.now();
    // _startTimer();
  }

  /// Called by the detail page whenever playback pauses or stops.
  void onPlaybackPaused() {
    _stopTimer();
    if (state.source == StepTrackingSource.sensor) {
      _service.pauseStepSensorTracking();
    }
  }

  /// Called when the guide finishes playing. Writes an exercise session and
  /// returns the summary data (or null if tracking was not active).
  Future<ExerciseSummaryData?> onPlaybackCompleted() async {
    _stopTimer();
    final start = _sessionStart;
    if (start == null || !state.isReady) return null;
    final end = DateTime.now();
    int steps;
    double distance;
    if (state.source == StepTrackingSource.sensor) {
      steps = await _service.stopStepSensorTracking();
      distance = steps * 0.78; // 平均步幅估算
    } else {
      steps = await _service.getStepsBetween(start, end);
      distance = await _service.getDistanceBetween(start, end);
    }
    if (!mounted) return null;
    state = state.copyWith(steps: steps, distance: distance);
    final summary = ExerciseSummaryData(
      guideName: _guideName ?? '導覽',
      startTime: start,
      endTime: end,
      steps: steps,
      distanceMeters: distance,
    );
    await _service.writeExerciseSession(summary);
    _sessionStart = null;
    _guideName = null;
    return summary;
  }

  void _startTimer() {
    _timer?.cancel();
    // Fetch immediately, then every 30 s.
    _fetchMetrics();
    // Poll Health Connect every 5 s while a session is active so the UI stays responsive.
    _timer = Timer.periodic(const Duration(seconds: 5), (_) => _fetchMetrics());
    state = state.copyWith(isTracking: true);
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
    state = state.copyWith(isTracking: false);
  }

  Future<void> _fetchMetrics() async {
    if (_sessionStart == null) return;
    if (state.source == StepTrackingSource.sensor) {
      try {
        final steps = await _service.getCurrentSensorSteps();
        final distance = steps * 0.78;
        if (mounted) state = state.copyWith(steps: steps, distance: distance);
      } catch (_) {}
    } else {
      // 原本 Health Connect 邏輯不變
      final start = _sessionStart;
      if (start == null) return;
      final now = DateTime.now();
      try {
        final steps = await _service.getStepsBetween(start, now);
        if (mounted) state = state.copyWith(steps: steps);
      } catch (_) {
        // Silently ignore transient Health Connect errors.
      }
      try {
        final distance = await _service.getDistanceBetween(start, now);
        if (mounted) state = state.copyWith(distance: distance);
      } catch (_) {
        // Silently ignore transient Health Connect errors.
      }
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
