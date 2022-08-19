// ignore_for_file: file_names

import 'package:ecom/Widgets/const.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defHpadding,
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(title,
            style: Theme.of(context).textTheme.headline2),
      ),
    );
  }
}