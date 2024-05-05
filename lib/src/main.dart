import 'package:solid_app/src/infrastructure/datasources/user_datasource_impl.dart';

import 'domain/entities/enums/category.dart';
import 'domain/entities/enums/interest.dart';
import 'domain/entities/product.dart';
import 'domain/entities/user.dart';
import 'dart:io';

import 'infrastructure/datasources/product_datasource_impl.dart';
import 'infrastructure/services/email_service.dart';

void main() {

  /// ======================= CRUD USERS ====================================

  print('====================CRUD USERS =================================');
  var userService = UserDatasourceImpl();
  var emailService = EmailService();

  // Create user
  var newUser = User(
    id: 1,
    name: 'Salomon',
    identification: '123456789',
    address: 'Calle Principal 123',
    phoneNumber: '1234567890',
    email: 'salo@example.com',
    interest: Interest.mayorista,
  );

  print('Primer usuario registrado!');
  userService.createUser(newUser, emailService);

  // List users
  print('\nLista de usuarios del sistema:');
  print(userService.listUsers().toString());

  // Update users
  var updatedUser = User(
    id: 1,
    name: 'Salomon Updated',
    identification: '987654321',
    address: 'Updated Address',
    phoneNumber: '0987654321',
    email: 'updated@example.com',
    interest: Interest.ocasional,
  );
  userService.updateUser(updatedUser);

  print('\nLista de usuarios del sistema después de la actualización:');
  print(userService.listUsers().toString());

  // Delete users
  var userIdToDelete = 1;
  userService.deleteUser(userIdToDelete);

  print('\nLista de usuarios del sistema después de eliminar uno:');
  print(userService.listUsers().toString());

  /// ======================= CRUD PRODUCTOS ====================================

  print('====================CRUD PRODUCTS =================================');
  var productDatasource = ProductDatasourceImpl();

  var product1 = Product(
    id: "1",
    name: "Product 1",
    sku: "SKU001",
    description: "Description for Product 1",
    price: 10.0,
    material: "Material 1",
    category: Category.celulares,
    stock: 50,
    imagesList: ["image1.jpg", "image2.jpg"],
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  var product2 = Product(
    id: "2",
    name: "Product 2",
    sku: "SKU002",
    description: "Description for Product 2",
    price: 20.0,
    material: "Material 2",
    category: Category.accesorioElectronico,
    stock: 100,
    imagesList: ["image3.jpg", "image4.jpg"],
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  // Add products
  productDatasource.addProduct(product1);
  productDatasource.addProduct(product2);

  // List products
  print("Lista de productos:");
  productDatasource.listProducts().forEach((product) {
    print("ID: ${product.id}, SKU: ${product.sku}, Name: ${product.name}, Price: ${product.price}");
  });

  // Edit product
  var newProduct2 = Product(
    id: "2",
    name: "Product Two",
    sku: "SKU002",
    description: "Updated description for Product 2",
    price: 25.0,
    material: "Material 2",
    category: Category.accesorioDecorativo,
    stock: 100,
    imagesList: ["image3.jpg", "image4.jpg"],
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );

  productDatasource.editProduct("SKU002", newProduct2);
  print("\nProducto editado:");
  print(productDatasource.getProductBySku("SKU002"));

  // Delete product
  productDatasource.deleteProduct("SKU001");
  print("\nLista de productos después de eliminar uno:");
  productDatasource.listProducts().forEach((product) {
    print("ID: ${product.id}, SKU: ${product.sku}, Name: ${product.name}, Price: ${product.price}");
  });
}

