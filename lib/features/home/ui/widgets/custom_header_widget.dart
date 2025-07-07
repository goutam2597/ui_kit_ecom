import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class CustomHeaderWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomHeaderWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              'See All',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: AppColors.themeColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_forward, size: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
