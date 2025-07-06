import 'package:flutter/material.dart';
import 'package:ui_kit_ecom/features/auth/ui/screens/password_recovery_screen.dart';

import '../widgets/user_avatar.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
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
                        'Setup New Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        textAlign: TextAlign.center,
                        'Please, setup a new password for \nyour account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'New Password',

                          border: OutlineInputBorder(),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm New Password',

                          border: OutlineInputBorder(),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.28,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Save'),
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
            ),
          ),
        ],
      ),
    );
  }
}
