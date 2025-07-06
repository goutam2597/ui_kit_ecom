import 'package:flutter/material.dart';
import 'package:ui_kit_ecom/features/auth/ui/screens/otp_screen.dart';
import 'package:ui_kit_ecom/features/auth/ui/widgets/recovery_type_selector.dart';

import '../widgets/user_avatar.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
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
                    'Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    textAlign: TextAlign.center,
                    'How you would like to restore \nyour password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: RecoveryTypeSelector(),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpScreen())); },
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
