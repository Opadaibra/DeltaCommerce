// ignore_for_file: file_names

import 'package:ecom/Widgets/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customappbar extends StatelessWidget with PreferredSizeWidget {
  Customappbar({
    required this.title,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(title, style: Theme.of(context).textTheme.headline2),
      ),
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.favorite,
            color: primarycolor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
