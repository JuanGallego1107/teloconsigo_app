import '../../domain/entities/user.dart';

abstract class INotificationHandler {
  void sendMessage(User user, String message);
}