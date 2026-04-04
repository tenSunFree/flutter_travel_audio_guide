class ExerciseSummaryData {
  const ExerciseSummaryData({
    required this.guideName,
    required this.startTime,
    required this.endTime,
    required this.steps,
    required this.distanceMeters,
  });

  final String guideName;
  final DateTime startTime;
  final DateTime endTime;
  final int steps;
  final double distanceMeters;

  Duration get duration => endTime.difference(startTime);
}
