import 'package:get/get.dart';
import 'package:list_products/products/get_list_products_controller.dart';

import '../data/repositories/products_repository.dart';

class GetListProductsBidings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>
        getListProductsController(productsRepository: ProductsRepository()));
  }
}
