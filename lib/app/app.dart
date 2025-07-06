import 'package:flutter/material.dart';
import 'package:ui_kit_ecom/app/app_theme_data.dart';
import 'package:ui_kit_ecom/features/auth/ui/screens/splash_screen.dart';

class UiKitEcom extends StatelessWidget {
  const UiKitEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(), theme: AppThemeData.lightTheme);
  }
}
