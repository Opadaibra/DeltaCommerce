// ignore_for_file: file_names

// ignore: use_key_in_widget_constructors
import 'package:ecom/Widgets/NavBar.dart';
import 'package:ecom/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

import '../Widgets/const.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);
  static route(){
    return MaterialPageRoute(builder:(_)=> const HomeScreen() , settings:const RouteSettings(name:routeName));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: secondrycolor,
      appBar: Customappbar(title: "Delta Commerce"),
      bottomNavigationBar: const NavBar(),
    );
  }
}
