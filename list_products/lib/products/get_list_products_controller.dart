import 'package:get/get.dart';

import '../data/model/products.dart';
import '../data/repositories/products_repository.dart';

class getListProductsController extends GetxController with StateMixin {
  ProductsRepository productsRepository;
  getListProductsController({required this.productsRepository});

  List<Products> productsList = [];

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    productsList = await productsRepository.getAllProducts();
    change(null, status: RxStatus.success());
    super.onInit();
  }
}
