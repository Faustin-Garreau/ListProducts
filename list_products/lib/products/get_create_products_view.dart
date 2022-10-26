import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'bottom_bar.dart';

class GetCreatetProductsView extends GetView {
  const GetCreatetProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SweetNaveBar(),
      body: Center(child: Text('Page de création d\'un produit')),
    );
  }
}
