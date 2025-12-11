import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:world_travel_app/pages/verify_password_screen.dart';
import 'package:world_travel_app/widgets/custom_container.dart';
import 'package:world_travel_app/widgets/custom_text.dart';
import 'package:world_travel_app/widgets/custom_text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(text: 'World Travel'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Gap(80),
            CustomText(text: 'Forget password '),
            Gap(8),
            Text(
              'enter your phone number below to \n receive an 4-digit reset code',
              style: TextStyle(color: Colors.grey),
            ),
            Gap(40),
            Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomTextField(
              hintText: 'Enter Your Email',
              suffixIcon: Icons.email_outlined,
            ),

            Gap(40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => VerifyPasswordScreen()),
                );
              },
              child: CustomContainer(text: 'Send Code'),
            ),
          ],
        ),
      ),
    );
  }
}
