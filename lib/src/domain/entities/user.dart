import 'enums/interest.dart';

class User {
  int id;
  String name;
  String identification;
  String address;
  String phoneNumber;
  String email;
  Interest interest;

  User({
    required this.id,
    required this.name,
    required this.identification,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.interest,
  });

  @override
  String toString() {
    return 'Usuario:'
        '\nid: $id,'
        '\nNombre: $name,'
        '\nIdentificación: $identification,'
        '\nDirección: $address,'
        '\nNumero de telefono: $phoneNumber,'
        '\nEmail: $email,'
        '\nInteres: ${interest.name}\n';
  }
}