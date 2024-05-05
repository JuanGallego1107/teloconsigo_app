import '../../domain/entities/user.dart';

/// Abstract class for a Notification Type Handler
abstract class INotificationHandler {

  /// Method for sending a custom message
  void sendMessage(User user, String message);

}