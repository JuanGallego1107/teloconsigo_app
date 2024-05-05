

import 'package:solid_app/src/domain/entities/product.dart';

class Variant extends Product {
  String variantId;
  String variantSku;
  String size;
  String variantColor;

  Variant({
    required super.id,
    required super.name,
    required this.variantId,
    required this.variantSku,
    required this.size,
    required this.variantColor,
    required super.sku,
    required super.description,
    required super.price,
    required super.material,
    required super.category,
    required super.stock,
    required super.imagesList,
    required super.createdAt,
    required super.updatedAt,
  });

}
