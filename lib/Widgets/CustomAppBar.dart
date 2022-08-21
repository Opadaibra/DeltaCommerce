// ignore_for_file: file_names

import 'package:ecom/Widgets/const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customappbar extends StatelessWidget with PreferredSizeWidget {
  Customappbar({
    Key? key,
    required this.title,
  }) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: primarycolor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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
