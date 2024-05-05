
import '../entities/product.dart';

/// Abstract class for Product datasource
abstract class ProductDatasource {

  /// Method for listing all products
  List<Product> listProducts();

  /// Method for adding products
  void addProduct(Product product);

  /// Method for editing products
  void editProduct(String sku, Product newProduct);

  /// Method to obtain a product by SKU
  Product? getProductBySku(String sku);

  /// Method to delete a product by its SKU
  void deleteProduct(String sku);

}