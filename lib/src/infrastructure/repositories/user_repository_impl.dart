
import 'package:solid_app/src/domain/datasources/user_datasource.dart';
import 'package:solid_app/src/domain/entities/user.dart';
import 'package:solid_app/src/domain/repositories/user_repository.dart';

import '../services/notification_handler.dart';

/// Class for User repository implementation
class UserRepositoryImpl extends UserRepository {

  /// Initialization of User datasource
  final UserDatasource userDatasource;

  UserRepositoryImpl(this.userDatasource);

  @override
  void createUser(User user, INotificationHandler iNotificationHandler) {
    userDatasource.createUser(user, iNotificationHandler);
  }

  @override
  void deleteUser(int userId) {
    userDatasource.deleteUser(userId);
  }

  @override
  List<User> listUsers() {
    return userDatasource.listUsers();
  }

  @override
  void updateUser(User user) {
    userDatasource.updateUser(user);
  }

}