// ignore_for_file: file_names

// ignore: use_key_in_widget_constructors
import 'package:ecom/Widgets/NavBar.dart';
import 'package:ecom/Widgets/CustomAppBar.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/category_model.dart';
import 'package:ecom/modules/module.dart';
import 'package:flutter/material.dart';

import '../Widgets/const.dart';

class Catlog extends StatelessWidget {
  static const String routeName = '/catalog';
  final Category category;
  const Catlog({required this.category, Key? key}) : super(key: key);
  static route({required Category category}) {
    return MaterialPageRoute(
        builder: (_) => Catlog(category: category),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryproducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
        backgroundColor: secondrycolor,
        appBar: Customappbar(title: category.name),
        bottomNavigationBar: const NavBar(),
        body: GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.5),
            itemCount: categoryproducts.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: Product_Card(
                product: categoryproducts[index],
                widthfactor: 2.2,
              ));
            }));
  }
}
