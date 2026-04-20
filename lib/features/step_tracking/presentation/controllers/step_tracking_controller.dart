import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import '../../domain/entities/exercise_summary_data.dart';
import '../../domain/services/step_tracking_service.dart';

class StepTrackingState {
  const StepTrackingState({
    this.isAvailable = false,
    this.hasPermission = false,
    this.steps = 0,
    this.distance = 0.0,
    this.isTracking = false,
  });

  final bool isAvailable;
  final bool hasPermission;
  final int steps;
  final double distance;
  final bool isTracking;

  StepTrackingState copyWith({
    bool? isAvailable,
    bool? hasPermission,
    int? steps,
    double? distance,
    bool? isTracking,
  }) {
    return StepTrackingState(
      isAvailable: isAvailable ?? this.isAvailable,
      hasPermission: hasPermission ?? this.hasPermission,
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
    if (!available) return;
    state = state.copyWith(isAvailable: true);
    var granted = await _service.hasPermissions();
    debugPrint('StepTrackingController, _init, granted: $granted');
    if (!granted) {
      granted = await _service.requestPermissions();
    }
    state = state.copyWith(hasPermission: granted);
  }

  /// Called by the detail page whenever playback transitions to playing.
  void onPlaybackStarted(String guideName) {
    if (!state.isAvailable || !state.hasPermission) return;
    _guideName = guideName;
    _sessionStart ??= DateTime.now();
    _startTimer();
  }

  /// Called by the detail page whenever playback pauses or stops.
  void onPlaybackPaused() {
    _stopTimer();
  }

  /// Called when the guide finishes playing. Writes an exercise session and
  /// returns the summary data (or null if tracking was not active).
  Future<ExerciseSummaryData?> onPlaybackCompleted() async {
    _stopTimer();
    final start = _sessionStart;
    if (start == null || !state.isAvailable || !state.hasPermission) return null;
    final end = DateTime.now();
    // Final fetch
    final steps = await _service.getStepsBetween(start, end);
    final distance = await _service.getDistanceBetween(start, end);
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
