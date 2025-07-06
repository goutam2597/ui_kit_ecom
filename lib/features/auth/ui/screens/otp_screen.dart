import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_kit_ecom/features/auth/ui/screens/set_new_password_screen.dart';

import '../widgets/user_avatar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -50,
            right: -50,
            child: Image.asset('assets/images/bubble09.png', width: 400),
          ),
          Positioned(
            top: -50,
            right: -50,
            child: Image.asset('assets/images/bubble08.png', width: 350),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 48.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 100),
                      UserAvatar(),
                      const SizedBox(height: 4),
                      Text(
                        'Password Recovery',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        textAlign: TextAlign.center,
                        'Enter 4-digits code we sent you \non your phone number',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        '+880 **** *** 123',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16 ),
                      Pinput(
                        defaultPinTheme: PinTheme(
                          textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadiusGeometry.circular(16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      ElevatedButton(
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SetNewPasswordScreen(),
                          ),
                        );},
                        child: const Text('Next'),
                      ),

                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Resend OTP'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
