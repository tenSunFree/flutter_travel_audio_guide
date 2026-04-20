import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/features/step_tracking/data/health_connect_api.g.dart',
    kotlinOut:
        'android/app/src/main/kotlin/com/tensunfree/flutter_travel_audio_guide/flutter_travel_audio_guide/HealthConnectApi.g.kt',
    kotlinOptions: KotlinOptions(
      package:
          'com.tensunfree.flutter_travel_audio_guide.flutter_travel_audio_guide',
    ),
  ),
)
@HostApi()
abstract class HealthConnectHostApi {
  @async
  bool checkAvailability();

  @async
  bool requestPermissions();

  @async
  bool hasPermissions();

  @async
  int getStepsBetween(int startTimeMillis, int endTimeMillis);

  @async
  int getDistanceBetween(int startTimeMillis, int endTimeMillis);

  @async
  bool writeExerciseSession(
    String guideName,
    int startTimeMillis,
    int endTimeMillis,
    int steps,
    int distanceCentimetres,
  );

  @async
  bool isStepSensorAvailable();

  @async
  void startStepSensorTracking();

  @async
  void pauseStepSensorTracking();

  /// Returns the final accumulated step count
  @async
  int stopStepSensorTracking();

  @async
  int getCurrentSensorSteps();

  @async
  bool requestActivityRecognitionPermission();

  @async
  bool hasActivityRecognitionPermission();

  @async
  void resumeStepSensorTracking();
}
