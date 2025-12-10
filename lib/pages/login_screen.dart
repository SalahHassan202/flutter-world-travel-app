import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Gap(80),
            Image.asset(
              'assets/auth.png',
              width: 200,
              height: 173,
              fit: BoxFit.contain,
            ),
            Gap(15),
          ],
        ),
      ),
    );
  }
}
