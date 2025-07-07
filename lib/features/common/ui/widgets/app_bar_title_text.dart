import 'package:flutter/material.dart';

class AppBarTitleText extends StatelessWidget {
  final String titleText;
  const AppBarTitleText({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}