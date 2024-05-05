 import '../../domain/entities/user.dart';
import 'notification_handler.dart';

class EmailService implements INotificationHandler {
  @override
  void sendMessage(User user, String message) {
      print(message);
    }
  }
