// ignore_for_file: file_names

// ignore: use_key_in_widget_constructors
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/Widgets/NavBar.dart';
import 'package:ecom/Widgets/CustomAppBar.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/module.dart';
import 'package:flutter/material.dart';

import '../Widgets/const.dart';

class MyProduct extends StatelessWidget {
  static const String routeName = '/product';

  const MyProduct({required this.product, Key? key}) : super(key: key);
  static route({required Product product}) {
    return MaterialPageRoute(
        builder: (_) => MyProduct(
              product: product,
            ),
        settings: const RouteSettings(name: routeName));
  }

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondrycolor,
        appBar: Customappbar(
          title: product.name,
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: secondrycolor,
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: primarycolor),
                  child: Text(
                    "ADD TO CART",
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(color: secondrycolor),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 2))
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  // initialPage: 2,
                  autoPlay: true,
                ),
                items: [
                  HeroCrauslCards(
                    product: product,
                  ),
                ]),
            Padding(
                padding: defpadding,
                child: Stack(
                  children: [
                    Container(
                      padding: defHpadding,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      decoration: BoxDecoration(
                          color: secondrycolor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: shadowcolor,
                                blurRadius: 10,
                                offset: Offset(0, 5))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Text(
                            "${product.price}",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            //  Padding(padding: defpadding),
            const ExpansionTile(
              initiallyExpanded: true,
              title: Text("Product Information"),
              children: [
                ListTile(
                  title: Text(
                      "Grand Theft Auto V is an action-adventure game played from either a "
                      ""
                      """ third-person or first-person perspective. Players complete missions—linear"""
                      """ scenarios with set objectives—to progress through the story. Outside of the missions, """
                      """players may freely roam the open world."""),
                )
              ],
            ),
            const ExpansionTile(
              initiallyExpanded: true,
              title: Text("Delevry Information"),
              children: [
                ListTile(
                  title: Text(
                      "Grand Theft Auto V is an action-adventure game played from either a "
                      ""
                      """ third-person or first-person perspective. Players complete missions—linear"""
                      """ scenarios with set objectives—to progress through the story. Outside of the missions, """
                      """players may freely roam the open world."""),
                )
              ],
            )
          ],
        ));
  }
}
