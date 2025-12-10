import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_travel_app/models/on_boarding_data.dart';
import 'package:world_travel_app/pages/login_screen.dart';
import 'package:world_travel_app/widgets/primary_color.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onBoardingList.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) => Column(
                children: [
                  Gap(80),
                  Image.asset(onBoardingList[index].image, width: 350),
                  Text(
                    onBoardingList[index].text,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    onBoardingList.length,
                    (val) => Container(
                      margin: EdgeInsets.only(right: 7),
                      height: 10,
                      width: _currentPage == val ? 28 : 15,
                      decoration: BoxDecoration(
                        color: _currentPage == val
                            ? primaryColor
                            : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    if (_currentPage == onBoardingList.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (c) => LoginScreen()),
                      );
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Image.asset(
                    'assets/on_boarding_button.png',
                    width: 79,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
