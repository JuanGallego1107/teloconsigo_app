import 'package:solid_app/src/domain/datasources/product_datasource.dart';

import '../../domain/entities/product.dart';

class ProductDatasourceImpl extends ProductDatasource{

  /// TODO: API LOGIC

  final List<Product> products = [];

  @override
  List<Product> listProducts(){
    return List<Product>.from(products);
  }

  // Method to add a new product
  @override
  void addProduct(Product product) {
    products.add(product);
  }

  // Method to edit an existing product
  @override
  void editProduct(String sku, Product newProduct) {
    int index = products.indexWhere((product) => product.sku == sku);
    if (index != -1) {
      products[index] = newProduct;
    } else {
      print("Product with SKU $sku not found.");
    }
  }

  // Method to query a product by SKU
  @override
  Product? getProductBySku(String sku) {
    return products.firstWhere((product) => product.sku == sku);
  }

  // Method to delete a product by SKU
  @override
  void deleteProduct(String sku) {
    products.removeWhere((product) => product.sku == sku);
  }
}