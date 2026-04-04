import '../../domain/entities/exercise_summary_data.dart';
import '../../domain/services/step_tracking_service.dart';
import '../health_connect_api.g.dart';

class StepTrackingServiceImpl implements StepTrackingService {
  StepTrackingServiceImpl() : _api = HealthConnectHostApi();

  final HealthConnectHostApi _api;

  @override
  Future<bool> checkAvailability() => _api.checkAvailability();

  @override
  Future<bool> requestPermissions() => _api.requestPermissions();

  @override
  Future<bool> hasPermissions() => _api.hasPermissions();

  @override
  Future<int> getStepsBetween(DateTime start, DateTime end) =>
      _api.getStepsBetween(
        start.millisecondsSinceEpoch,
        end.millisecondsSinceEpoch,
      );

  @override
  Future<double> getDistanceBetween(DateTime start, DateTime end) async {
    final cm = await _api.getDistanceBetween(
        start.millisecondsSinceEpoch, end.millisecondsSinceEpoch);
    return cm / 100.0;
  }

  @override
  Future<void> writeExerciseSession(ExerciseSummaryData data) async {
    await _api.writeExerciseSession(
      data.guideName,
      data.startTime.millisecondsSinceEpoch,
      data.endTime.millisecondsSinceEpoch,
      data.steps,
      (data.distanceMeters * 100).round(),
    );
  }
}

/// Returned on non-Android platforms so the rest of the app compiles unchanged.
class NoOpStepTrackingService implements StepTrackingService {
  const NoOpStepTrackingService();

  @override
  Future<bool> checkAvailability() async => false;

  @override
  Future<bool> requestPermissions() async => false;

  @override
  Future<bool> hasPermissions() async => false;

  @override
  Future<int> getStepsBetween(DateTime start, DateTime end) async => 0;

  @override
  Future<double> getDistanceBetween(DateTime start, DateTime end) async => 0.0;

  @override
  Future<void> writeExerciseSession(ExerciseSummaryData data) async {}
}
