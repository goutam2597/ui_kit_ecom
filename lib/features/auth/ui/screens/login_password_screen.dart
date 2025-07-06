import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit_ecom/features/auth/ui/screens/password_recovery_screen.dart';
import 'package:ui_kit_ecom/features/auth/ui/widgets/title_text_widget.dart';

import '../widgets/user_avatar.dart';

class LoginPasswordScreen extends StatefulWidget {
  const LoginPasswordScreen({super.key});

  @override
  State<LoginPasswordScreen> createState() => _LoginPasswordScreenState();
}

class _LoginPasswordScreenState extends State<LoginPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -50,
            left: -50,
            child: Image.asset('assets/images/bubble05.png', width: 380),
          ),
          Positioned(
            top: -50,
            left: -50,
            child: Image.asset('assets/images/bubble04.png', width: 330),
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
                      Text(
                        'Hello, User!!',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        'Type your password to continue ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Next'),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PasswordRecoveryScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Forgot your Password?',
                            style: TextStyle(color: Colors.black),
                          ),
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
