import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/database/database_provider.dart';
import '../data/repositories/reminder_repository_impl.dart';
import '../data/services/notification_service_impl.dart';
import '../domain/entities/reminder.dart';
import '../domain/repositories/reminder_repository.dart';
import '../domain/services/notification_service.dart';
import '../domain/usecases/create_reminder_usecase.dart';
import '../domain/usecases/delete_reminder_usecase.dart';
import '../domain/usecases/reschedule_pending_reminders_usecase.dart';

final flutterLocalNotificationsPluginProvider =
    Provider<FlutterLocalNotificationsPlugin>((ref) {
      return FlutterLocalNotificationsPlugin();
    });

final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationServiceImpl(
    ref.watch(flutterLocalNotificationsPluginProvider),
  );
});

final reminderRepositoryProvider = Provider<ReminderRepository>((ref) {
  return ReminderRepositoryImpl(ref.watch(appDatabaseProvider));
});

final createReminderUseCaseProvider = Provider<CreateReminderUseCase>((ref) {
  return CreateReminderUseCase(
    ref.watch(reminderRepositoryProvider),
    ref.watch(notificationServiceProvider),
  );
});

final deleteReminderUseCaseProvider = Provider<DeleteReminderUseCase>((ref) {
  return DeleteReminderUseCase(
    ref.watch(reminderRepositoryProvider),
    ref.watch(notificationServiceProvider),
  );
});

final reschedulePendingRemindersUseCaseProvider =
    Provider<ReschedulePendingRemindersUseCase>((ref) {
      return ReschedulePendingRemindersUseCase(
        ref.watch(reminderRepositoryProvider),
        ref.watch(notificationServiceProvider),
      );
    });

final reminderListProvider = StreamProvider<List<Reminder>>((ref) {
  return ref.watch(reminderRepositoryProvider).watchAllReminders();
});
