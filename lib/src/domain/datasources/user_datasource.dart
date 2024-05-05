
import '../../infrastructure/services/notification_handler.dart';
import '../entities/user.dart';

abstract class UserDatasource{

  List<User> listUsers();

  void createUser(User user, INotificationHandler iNotificationHandler);

  void updateUser(User user);

  void deleteUser(int userId);
}