import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

class SweetNaveBar extends StatefulWidget {
  const SweetNaveBar({Key? key}) : super(key: key);

  @override
  State<SweetNaveBar> createState() => _SweetNavBarState();
}

class _SweetNavBarState extends State<SweetNaveBar> {
  int cIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SweetNavBar(
      currentIndex: cIndex,
      items: [
        SweetNavBarItem(
          sweetActive: const Icon(Icons.home),
          sweetIcon: const Icon(
            Icons.home_outlined,
          ),
          sweetLabel: 'Home',
        ),
        SweetNavBarItem(
            sweetIcon: const Icon(Icons.add), sweetLabel: 'Création produit'),
      ],
      onTap: (index) {
        setState(() {
          cIndex = index;
        });
        switch (cIndex) {
          case 0:
            Get.toNamed('/products');
            break;
          case 1:
            Get.toNamed('/products/create');
            break;
        }
      },
    );
  }
}
