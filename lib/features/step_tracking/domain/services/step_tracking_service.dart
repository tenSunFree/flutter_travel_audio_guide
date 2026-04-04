import '../entities/exercise_summary_data.dart';

abstract class StepTrackingService {
  Future<bool> checkAvailability();
  Future<bool> requestPermissions();
  Future<bool> hasPermissions();
  Future<int> getStepsBetween(DateTime start, DateTime end);
  Future<double> getDistanceBetween(DateTime start, DateTime end);
  Future<void> writeExerciseSession(ExerciseSummaryData data);
}
