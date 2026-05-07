import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/services/step_tracking_service_impl.dart';
import '../domain/services/step_tracking_service.dart';
import '../presentation/controllers/step_tracking_controller.dart';

final stepTrackingServiceProvider = Provider<StepTrackingService>((ref) {
  if (Platform.isAndroid) return StepTrackingServiceImpl();
  return const NoOpStepTrackingService();
});

final stepTrackingControllerProvider =
    StateNotifierProvider.autoDispose<
      StepTrackingController,
      StepTrackingState
    >((ref) {
      return StepTrackingController(ref.watch(stepTrackingServiceProvider));
    });
