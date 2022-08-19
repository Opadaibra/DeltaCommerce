import 'package:ecom/Widgets/const.dart';
import 'package:ecom/modules/Product.dart';
import 'package:flutter/material.dart';

class Product_Card extends StatelessWidget {
  final Product product;
  const Product_Card({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // ignore: sized_box_for_whitespace
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 150,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 60,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 80,
            decoration: BoxDecoration(color: primarycolor.withAlpha(50)),
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 70,
            decoration: const BoxDecoration(color: primarycolor),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
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
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: secondrycolor,
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
