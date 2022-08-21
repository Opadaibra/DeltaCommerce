// ignore_for_file: file_names

import 'package:ecom/Screens/Cart.dart';
import 'package:ecom/Screens/Catalog.dart';
import 'package:ecom/Screens/Product.dart';
import 'package:ecom/Screens/WishList.dart';
import 'package:ecom/Widgets/const.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/category_model.dart';
import 'package:flutter/material.dart';

import '../Screens/HomeScreen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // ignore: no_duplicate_case_values
      case HomeScreen.routeName:
        return HomeScreen.route();
      case Cart.routeName:
        return Cart.route();
      case Catlog.routeName:
        return Catlog.route(category: settings.arguments as Category);
      case MyProduct.routeName:
        return MyProduct.route(product: settings.arguments as Product);
      case Wishlist.routeName:
        return Wishlist.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: const Text(
                  "Error",
                  style: TextStyle(
                      color: primarycolor, fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
              ),
            ),
        settings: const RouteSettings(name: "/error"));
  }
}
