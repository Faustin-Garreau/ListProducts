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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: controller.obx(
        (state) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              controller.productsList.length,
              (index) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          title: Text(
                            controller.productsList[index].title,
                          ),
                          subtitle: Text(
                            controller.productsList[index].description.length >
                                    60
                                ? controller.productsList[index].description
                                        .substring(0, 40) +
                                    '...'
                                : controller.productsList[index].description,
                          ),
                          trailing: Chip(
                            label: Text('Voir'),
                            backgroundColor: Colors.yellow[50],
                            labelStyle: TextStyle(color: Colors.orange[200]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
