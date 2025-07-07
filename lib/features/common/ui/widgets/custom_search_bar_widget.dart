import 'package:flutter/material.dart';
import 'package:ui_kit_ecom/app/app_colors.dart';

class CustomSearchBarWidget extends StatelessWidget {
  const CustomSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        hintText: 'Search',
        hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        suffixIcon: Icon(
          Icons.camera_alt_outlined,
          color: AppColors.themeColor,
          size: 28,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}
