
import 'package:solid_app/src/domain/datasources/product_datasource.dart';
import 'package:solid_app/src/domain/entities/product.dart';
import 'package:solid_app/src/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {

  final ProductDatasource productDatasource;

  ProductRepositoryImpl(this.productDatasource);

  @override
  void addProduct(Product product) {
    productDatasource.addProduct(product);
  }

  @override
  void deleteProduct(String sku) {
    productDatasource.deleteProduct(sku);
  }

  @override
  void editProduct(String sku, Product newProduct) {
    productDatasource.editProduct(sku, newProduct);
  }

  @override
  Product? getProductBySku(String sku) {
    return productDatasource.getProductBySku(sku);
  }

  @override
  List<Product> listProducts() {
    return productDatasource.listProducts();
  }


}