
import '../../infrastructure/services/notification_handler.dart';
import '../entities/user.dart';

abstract class UserRepository {

  List<User> listUsers();

  void createUser(User user, INotificationHandler iNotificationHandler);

  void updateUser(User user);

  void deleteUser(int userId);
}