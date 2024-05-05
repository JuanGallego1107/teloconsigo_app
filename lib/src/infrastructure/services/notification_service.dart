import '../../domain/entities/user.dart';
import 'notification_handler.dart';

class NotificationService implements INotificationHandler {
  @override
  void sendMessage(User user, String message) {
      print(message);
    }
  }