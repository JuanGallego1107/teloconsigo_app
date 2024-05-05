
import '../../infrastructure/services/notification_handler.dart';
import '../entities/user.dart';

/// Abstract class for User repository
abstract class UserRepository {

  /// Method for listing all users
  List<User> listUsers();

  /// Method for adding users
  void createUser(User user, INotificationHandler iNotificationHandler);

  /// Method for updating products
  void updateUser(User user);

  /// Method to delete an user by its ID
  void deleteUser(int userId);

}