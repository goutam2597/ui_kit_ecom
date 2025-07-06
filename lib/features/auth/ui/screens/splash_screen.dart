import 'package:flutter/material.dart';
import 'package:ui_kit_ecom/app/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 8,
                    blurRadius: 10,
                  ),
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                  scale: 0.9,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            SizedBox(height: 8),
            TitleTextWidget(text: 'Shoppe'),
            Text(
              textAlign: TextAlign.center,
              'Beautiful eCommerce UI Kit \n for your online store',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.subtitleColor,
              ),
            ),
            SizedBox(height: 16),
            Spacer(),
            ElevatedButton(onPressed: () {}, child: Text('Get Started')),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'I already have an account',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.subtitleColor,
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: AppColors.themeColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

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
