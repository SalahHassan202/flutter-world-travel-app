import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_travel_app/pages/forget_password_screen.dart';
import 'package:world_travel_app/pages/home_screen.dart';
import 'package:world_travel_app/pages/sign_up_screen.dart';
import 'package:world_travel_app/widgets/custom_container.dart';
import 'package:world_travel_app/widgets/custom_text.dart';
import 'package:world_travel_app/widgets/custom_text_field.dart';
import 'package:world_travel_app/widgets/primary_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(80),
            Image.asset(
              'assets/auth.png',
              width: 200,
              height: 173,
              fit: BoxFit.contain,
            ),
            Gap(15),
            CustomText(text: 'Welcome Back'),
            Gap(5),

            Text(
              'sign in to access your account',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Gap(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                hintText: 'Enter your email',
                suffixIcon: Icons.email_outlined,
              ),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                hintText: 'Password',
                suffixIcon: Icons.visibility_off,
              ),
            ),
            Gap(5),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            isChecked = value!;
                          },
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (c) => ForgetPasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Forget password ?',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(35),
            SizedBox(
              width: 250,
              child: Row(
                children: [
                  Expanded(child: Divider(thickness: 2)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text('or sign in with'),
                  ),
                  Expanded(child: Divider(thickness: 2)),
                ],
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/google.png',
                    width: 35,
                    height: 35,
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/facebook.png',
                    width: 35,
                    height: 35,
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/twitter.png',
                    width: 35,
                    height: 35,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Gap(60),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => HomeScreen()),
                );
              },
              child: CustomContainer(text: 'Done'),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account? '),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => SignUp()),
                    );
                  },
                  child: Text('Sign up', style: TextStyle(color: primaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
