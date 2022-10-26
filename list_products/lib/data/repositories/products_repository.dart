import 'package:dio/dio.dart';

import '../model/products.dart';

class ProductsRepository {
  ProductsRepository();

  Future<List<Products>> getAllProducts() async {
    try {
      var response = await Dio().get(
        'https://dummyjson.com/products/',
      );
      List<Products> productsList = response.data['products']
          .map<Products>((products) => Products.fromJson(products))
          .toList();
      return productsList;
      print(response);
    } catch (e) {
      print(e);
      return [];
    }
  }
}
