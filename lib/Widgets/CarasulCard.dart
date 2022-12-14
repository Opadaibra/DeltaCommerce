// ignore_for_file: file_names

import 'package:ecom/Screens/Catalog.dart';
import 'package:ecom/Widgets/const.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/category_model.dart';

import 'package:flutter/material.dart';

class HeroCrauslCards extends StatelessWidget {
  final Category? category;
  final Product? product;
  // ignore: use_key_in_widget_constructors
  const HeroCrauslCards({this.category, this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Catlog.routeName, arguments: category);
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                    product == null ? category!.imagUrl : product!.imageUrl,
                    fit: BoxFit.cover,
                    width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: defpadding,
                    child: Text(
                      product == null ? category!.name : '',
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
