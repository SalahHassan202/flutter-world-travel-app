import 'package:flutter/material.dart';
import 'package:world_travel_app/widgets/primary_color.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 120,
            child: Image.asset('assets/splach_pic_1.png'),
          ),
          Center(child: Image.asset('assets/world_travel.png')),
          Positioned(
            bottom: 100,
            right: 120,
            child: Image.asset('assets/splach_pic_2.png'),
          ),
        ],
      ),
    );
  }
}
