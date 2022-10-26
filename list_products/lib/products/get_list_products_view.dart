import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:list_products/products/get_list_products_controller.dart';

import 'bottom_bar.dart';

class GetListProductsView extends GetView<getListProductsController> {
  const GetListProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SweetNaveBar(),
      body: controller.obx(
        (state) => SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(50.0),
              ),
              Text(
                "Products available",
                style: const TextStyle(fontSize: 55, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.all(50.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                  controller.productsList.length,
                  (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
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
                                controller.productsList[index].description
                                            .length >
                                        60
                                    ? controller.productsList[index].description
                                            .substring(0, 40) +
                                        '...'
                                    : controller
                                        .productsList[index].description,
                              ),
                              trailing: Chip(
                                label: Text('Voir'),
                                backgroundColor: Colors.yellow[50],
                                labelStyle:
                                    TextStyle(color: Colors.orange[200]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
