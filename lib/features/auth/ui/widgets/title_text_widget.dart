import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final String text;
  const TitleTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
    );
  }
}
