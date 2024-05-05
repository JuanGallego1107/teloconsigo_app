 import '../../domain/entities/user.dart';
import 'notification_handler.dart';

 /// NotificationHandler implementation for an Email Service
class EmailService implements INotificationHandler {
  @override
  void sendMessage(User user, String message) {
      print(message);
    }
  }
