
import '../../domain/datasources/user_datasource.dart';
import '../../domain/entities/user.dart';
import '../services/email_service.dart';
import '../services/notification_handler.dart';
import '../services/notification_service.dart';


class UserDatasourceImpl extends UserDatasource {

  EmailService emailService = EmailService();
  NotificationService notificationService = NotificationService();


   List<User> users = [];

   @override
  List<User> listUsers(){
     return List<User>.from(users);
   }

  @override
  void createUser(User user, INotificationHandler iNotificationHandler) {
    users.add(user);
    print('Usuario creado con exito!\n'
        'Bienvenido ${user.name}');

    /*
    if (user.interest == Interest.mayorista) {

      iNotificationHandler.sendMessage(user, 'Enviando correo de bienvenida'
          ' y términos y condiciones a ${user.email}');
    } else if (user.interest == Interest.ocasional) {
      notificationService.sendMessage(user,'Mostrando mensaje en pantalla\n'
          'Hola ${user.name}, '
          'pronto tendrá acceso a un catálogo web de productos de tecnología.');
    }
    */
    iNotificationHandler.sendMessage(user, 'Enviando correo de bienvenida'
        ' y términos y condiciones a ${user.email}');

  }

  @override
  void updateUser(User user) {
    var existingUserIndex = users.indexWhere((u) => u.id == user.id);
    if (existingUserIndex != -1) {
      var existingUserIndex = users.indexWhere((u) => u.id == user.id);
      users[existingUserIndex] = user;
      print('Usuario actualizado: ${user.name}');
    } else {
      print('Error: No se encontró el usuario con ID ${user.id}');
    }
  }

  @override
  void deleteUser(int userId) {
    var deletedUser = users.firstWhere((user) => user.id == userId);
      users.removeWhere((user) => user.id == userId);
      print('Usuario eliminado: ${deletedUser.name}');
  }
}