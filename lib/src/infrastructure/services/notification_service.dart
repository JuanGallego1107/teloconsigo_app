import '../../domain/entities/user.dart';
import 'notification_handler.dart';

/// NotificationHandler implementation for a Notficaction Service
class NotificationService implements INotificationHandler {

  @override
  void sendMessage(User user, String message) {
      print(message);
    }

  }