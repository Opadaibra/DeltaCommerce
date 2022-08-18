// ignore_for_file: file_names

import 'package:ecom/Widgets/const.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: secondrycolor, textTheme: textTheme());
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontSize: 32,
      color: primarycolor,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 24,
      color: primarycolor,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: 18,
      color: primarycolor,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontSize: 16,
      color: primarycolor,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 14,
      color: primarycolor,
      fontWeight: FontWeight.normal,
    ),
    headline6: TextStyle(
      fontSize: 14,
      color: primarycolor,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      fontSize: 12,
      color: primarycolor,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      fontSize: 10,
      color: primarycolor,
      fontWeight: FontWeight.normal,
    ),
  );
}
