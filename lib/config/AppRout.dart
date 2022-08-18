import 'package:ecom/Screens/Cart.dart';
import 'package:ecom/Screens/Catalog.dart';
import 'package:ecom/Screens/Product.dart';
import 'package:ecom/Screens/WishList.dart';
import 'package:ecom/Widgets/const.dart';
import 'package:flutter/material.dart';

import '../Screens/HomeScreen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("this route ${settings.name}");

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      // ignore: no_duplicate_case_values
      case HomeScreen.routeName:
        return HomeScreen.route();
     case Cart.routeName:
        return Cart.route(); 
     case Catlog.routeName:
        return Catlog.route();  case Product.routeName:
        return Product.route();  case Wishlist.routeName:
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
