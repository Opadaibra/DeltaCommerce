// ignore_for_file: file_names

// ignore: use_key_in_widget_constructors
import 'package:ecom/Widgets/NavBar.dart';
import 'package:ecom/Widgets/CustomAppBar.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/module.dart';
import 'package:flutter/material.dart';

import '../Widgets/const.dart';

class Wishlist extends StatelessWidget {
  static const String routeName = '/wishlist';

  const Wishlist({Key? key}) : super(key: key);
  static route() {
    return MaterialPageRoute(
        builder: (_) => const Wishlist(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: Customappbar(title: "Wish List"),
      bottomNavigationBar: const NavBar(),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2.2),
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: Product_Card(
              product: Product.products[index],
              widthfactor: 1.1,
              leftposation: 100,
              iswishlist: true,
            ));
          }),
    );
  }
}
