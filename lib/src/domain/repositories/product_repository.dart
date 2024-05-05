
import '../entities/product.dart';

abstract class ProductRepository {

  List<Product> listProducts();

  void addProduct(Product product);

  void editProduct(String sku, Product newProduct);

  Product? getProductBySku(String sku);

  void deleteProduct(String sku);

}