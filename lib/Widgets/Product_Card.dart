import 'package:ecom/Screens/Product.dart';
import 'package:ecom/Widgets/const.dart';
import 'package:ecom/modules/Product.dart';
import 'package:ecom/modules/category_model.dart';
import 'package:flutter/material.dart';

class Product_Card extends StatelessWidget {
  final Product product;
  final double widthfactor;
  final double leftposation;
  final bool iswishlist;
  const Product_Card(
      {Key? key,
      required this.product,
      this.widthfactor = 2.5,
      this.iswishlist = false,
      this.leftposation = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, MyProduct.routeName, arguments: product);
      },
      child: Stack(
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.width / widthfactor,
            height: 150,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 60,
            left: leftposation,
            child: Container(
              width: MediaQuery.of(context).size.width / widthfactor -
                  10 -
                  leftposation,
              height: 80,
              decoration: BoxDecoration(color: primarycolor.withAlpha(50)),
            ),
          ),
          Positioned(
            top: 65,
            left: leftposation + 5,
            child: Container(
              width: MediaQuery.of(context).size.width / widthfactor -
                  20 -
                  leftposation,
              height: 70,
              decoration: BoxDecoration(
                  color: primarycolor.withAlpha(200),
                  borderRadius: BorderRadius.circular(2)),
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: secondrycolor),
                        ),
                        Text(
                          "${product.price}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: secondrycolor),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: secondrycolor,
                        )),
                  ),
                  iswishlist
                      ? Expanded(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: secondrycolor,
                              )),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
