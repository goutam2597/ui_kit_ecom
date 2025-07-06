import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_kit_ecom/features/auth/ui/screens/sign_up_screen.dart';

import '../../../../app/app_colors.dart';

class WelcomeCarousel extends StatefulWidget {
  const WelcomeCarousel({super.key});

  @override
  State<WelcomeCarousel> createState() => _WelcomeCarouselState();
}

class _WelcomeCarouselState extends State<WelcomeCarousel> {
  PageController pageController = PageController();

  Color primaryColor = const Color(0xffffcc5c);
  Color secondColor = const Color(0xff3da4ab);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Fixed background bubble
          Positioned(
            top: -90,
            left: -90,
            child: Image.asset('assets/images/bubble04.png', width: 380),
          ),

          // PageView with cards
          Center(
            child: SizedBox(
              height: screenHeight * 0.8,
              child: PageView(
                controller: pageController,
                children: [
                  buildCard(context, 'Hello 1', false),
                  buildCard(context, 'Hello 2', false),
                  buildCard(context, 'Hello 3', false),
                  buildCard(context, 'Ready?', true),
                ],
              ),
            ),
          ),

          // Optional indicator
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: WormEffect(
                  dotColor: Colors.blue.shade50,
                  activeDotColor: AppColors.themeColor,
                  dotHeight: 20,
                  dotWidth: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, bool isLast) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        child: SizedBox(
          height: screenHeight * 0.8,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top image
              Expanded(
                flex: 3,
                child: Image.asset(
                  'assets/images/slider_img.png',
                  fit: BoxFit.cover,
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            height: 1.2,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      if (isLast)
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Let's Start"),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
