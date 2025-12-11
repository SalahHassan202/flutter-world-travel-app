import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_travel_app/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            CustomText(text: 'Welcome to Home'),
            Gap(40),
            Image.asset('assets/home.png'),
          ],
        ),
      ),
    );
  }
}
