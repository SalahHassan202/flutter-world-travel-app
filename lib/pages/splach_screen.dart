import 'package:flutter/material.dart';
import 'package:world_travel_app/pages/on_boarding_screen.dart';
import 'package:world_travel_app/widgets/primary_color.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (c) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 60,
            child: Image.asset(
              'assets/splach_pic_1.png',
              width: 90,
              height: 207,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/world_travel.png',
              width: 300,
              height: 150,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 60,
            child: Image.asset(
              'assets/splach_pic_2.png',
              width: 90,
              height: 207,
            ),
          ),
        ],
      ),
    );
  }
}
