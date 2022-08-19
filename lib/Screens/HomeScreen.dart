// ignore_for_file: file_names

// ignore: use_key_in_widget_constructors
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/Widgets/CarasulCard.dart';
import 'package:ecom/Widgets/NavBar.dart';
import 'package:ecom/Widgets/CustomAppBar.dart';
import 'package:ecom/Widgets/Product_Card.dart';
import 'package:ecom/Widgets/Productcraosle.dart';
import 'package:ecom/Widgets/SectionTitle.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/category_model.dart';
import 'package:flutter/material.dart';

import '../Widgets/const.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);
  static route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondrycolor,
      appBar: Customappbar(title: "Home"),
      bottomNavigationBar: const NavBar(),
      body: Column(
        children: [
          Container(
              padding: defVpadding,
              child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.5,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    // initialPage: 2,
                    autoPlay: true,
                  ),
                  items: Category.categorys
                      .map((category) => HeroCrauslCards(category: category))
                      .toList())),
          const SectionTitle(title: "RECOMMENDED"),
          ProductCrausle(
              products: Product.products
                  .where((product) => product.isrecommended)
                  .toList()),
          const SectionTitle(title: "MOST POPULAR"),
          ProductCrausle(
              products: Product.products
                  .where((product) => product.ispopular)
                  .toList()),
        ],
      ),
    );
  }
}
