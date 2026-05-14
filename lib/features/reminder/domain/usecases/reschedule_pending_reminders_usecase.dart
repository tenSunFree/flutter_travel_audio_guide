import '../repositories/reminder_repository.dart';
import '../services/notification_service.dart';

class ReschedulePendingRemindersUseCase {
  ReschedulePendingRemindersUseCase(
    this._repository,
    this._notificationService,
  );

  final ReminderRepository _repository;
  final NotificationService _notificationService;

  Future<void> call() async {
    final reminders = await _repository.getPendingEnabledReminders();
    await _notificationService.reschedulePendingReminders(reminders);
  }
}
