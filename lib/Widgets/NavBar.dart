// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'const.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: secondrycolor,
      elevation: 0,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.home,
                  color: primarycolor,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: primarycolor,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/user');
                },
                icon: const Icon(
                  Icons.person,
                  color: primarycolor,
                )),
          ],
        ),
      ),
    );
  }
}
