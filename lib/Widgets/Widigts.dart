 // ignore_for_file: file_names

 import 'package:ecom/Widgets/const.dart';
import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget with PreferredSizeWidget{
  const Customappbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Container(
        padding:const  EdgeInsets.symmetric(horizontal: 20),
        child: const Text(
          "Delta Commerce",
          style: TextStyle(
              color: primarycolor,
              fontFamily: "Avenir",
              fontWeight: FontWeight.bold),
        ),
      ),
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.favorite,
            color: primarycolor,
          ),
          onPressed: () {},
        )
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
