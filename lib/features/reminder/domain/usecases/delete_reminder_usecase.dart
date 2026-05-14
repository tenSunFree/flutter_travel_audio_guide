import '../repositories/reminder_repository.dart';
import '../services/notification_service.dart';

class DeleteReminderUseCase {
  DeleteReminderUseCase(this._repository, this._notificationService);

  final ReminderRepository _repository;
  final NotificationService _notificationService;

  Future<void> call({required int id, required int notificationId}) async {
    await _notificationService.cancelReminder(notificationId);
    await _repository.deleteReminder(id);
  }
}
