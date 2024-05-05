import 'package:solid_app/src/domain/datasources/product_datasource.dart';

import '../../domain/entities/product.dart';

/// Class for Product datasource implementation
class ProductDatasourceImpl extends ProductDatasource{

  /// TODO: API LOGIC

  /// Intilization of products list
  final List<Product> products = [];

  @override
  List<Product> listProducts(){
    return List<Product>.from(products);
  }

  @override
  void addProduct(Product product) {
    products.add(product);
  }

  @override
  void editProduct(String sku, Product newProduct) {
    int index = products.indexWhere((product) => product.sku == sku);
    if (index != -1) {
      products[index] = newProduct;
    } else {
      print("Product with SKU $sku not found.");
    }
  }

  @override
  Product? getProductBySku(String sku) {
    return products.firstWhere((product) => product.sku == sku);
  }

  @override
  void deleteProduct(String sku) {
    products.removeWhere((product) => product.sku == sku);
  }
}