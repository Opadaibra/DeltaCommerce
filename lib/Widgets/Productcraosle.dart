import 'package:ecom/Widgets/const.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/module.dart';
import 'package:flutter/material.dart';

class ProductCrausle extends StatelessWidget {
  final List<Product > products;
  const ProductCrausle({
    Key? key,
    required this.products
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding: defpadding,
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Product_Card(product: products[index]),
            );
          }),
    );
  }
}
