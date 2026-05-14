import '../entities/reminder.dart';

abstract class NotificationService {
  Future<void> initialize();

  Future<bool> requestPermission();

  Future<void> scheduleReminder(Reminder reminder);

  Future<void> cancelReminder(int notificationId);

  Future<void> reschedulePendingReminders(List<Reminder> reminders);
}
