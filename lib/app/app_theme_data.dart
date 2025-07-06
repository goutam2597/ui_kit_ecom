import 'package:flutter/material.dart';
import 'package:ui_kit_ecom/app/app_colors.dart';

class AppThemeData {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Raleway',
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.themeColor,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
    ),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.themeColor,
        foregroundColor: Colors.white,
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade100,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      hintStyle: TextStyle(
        fontSize: 14,
        color: Colors.grey.shade500,
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.themeColor,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.colorText,
        foregroundColor: Colors.white,
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade900,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      hintStyle: TextStyle(
        color: Colors.grey.shade400,
        fontWeight: FontWeight.w600,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.themeColor, width: 1.5),
        borderRadius: BorderRadius.circular(32),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.themeColor, width: 1.5),
        borderRadius: BorderRadius.circular(32),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.themeColor, width: 1.5),
        borderRadius: BorderRadius.circular(32),
      ),
    ),
  );
}
