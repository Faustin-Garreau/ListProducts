import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:list_products/products/get_list_products_controller.dart';

class GetListProductsView extends GetView<getListProductsController> {
  const GetListProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.obx((state) => Center(
              child: Column(
                children: List.generate(
                    controller.productsList.length,
                    (index) => Row(
                          children: [
                            Text(controller.productsList[index].title)
                          ],
                        )),
              ),
            )));
  }
}
