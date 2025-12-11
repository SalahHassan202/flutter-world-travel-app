import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_travel_app/pages/login_screen.dart';
import 'package:world_travel_app/widgets/custom_container.dart';
import 'package:world_travel_app/widgets/custom_text.dart';
import 'package:world_travel_app/widgets/custom_text_field.dart';
import 'package:world_travel_app/widgets/primary_color.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(60),
            Image.asset(
              'assets/auth.png',
              width: 200,
              height: 173,
              fit: BoxFit.contain,
            ),
            Gap(15),
            CustomText(text: 'Get Started'),
            Gap(5),

            Text(
              'by creating a free account.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                hintText: 'Full name',
                suffixIcon: Icons.person_outline,
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                hintText: 'Valid email',
                suffixIcon: Icons.email_outlined,
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                hintText: 'Phone number',
                suffixIcon: Icons.smartphone_outlined,
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                hintText: 'Strong password',
                suffixIcon: Icons.visibility_off,
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Row(
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
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: 'By checking the box you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(color: primaryColor),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Conditions',
                            style: TextStyle(color: primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(30),
            CustomContainer(text: 'SignUp'),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(('Already a member? ')),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => LoginScreen()),
                    );
                  },
                  child: Text('Login', style: TextStyle(color: primaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
