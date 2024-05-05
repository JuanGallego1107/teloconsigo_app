
import 'enums/category.dart';

/// Product Model
class Product {

  String id;
  String name;
  String sku;
  String description;
  double price;
  String material;
  Category category;
  int stock;
  List<String> imagesList;
  DateTime createdAt;
  DateTime updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.sku,
    required this.description,
    required this.price,
    required this.material,
    required this.category,
    required this.stock,
    required this.imagesList,
    required this.createdAt,
    required this.updatedAt
});
}
