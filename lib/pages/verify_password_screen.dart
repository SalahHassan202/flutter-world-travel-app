import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:world_travel_app/widgets/custom_container.dart';
import 'package:world_travel_app/widgets/custom_text.dart';
import 'package:world_travel_app/widgets/primary_color.dart';

class VerifyPasswordScreen extends StatefulWidget {
  const VerifyPasswordScreen({super.key});

  @override
  State<VerifyPasswordScreen> createState() => _VerifyPasswordScreenState();
}

class _VerifyPasswordScreenState extends State<VerifyPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: CustomText(text: 'Verify Code'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Gap(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomText(text: 'Verify Code'),
          ),

          Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),

                children: [
                  TextSpan(
                    text:
                        'We will send you a message to your SMS and email, if\n something goes wrong, please contact us. ',
                  ),
                  TextSpan(
                    text: 'Help',
                    style: TextStyle(color: primaryColor),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                fieldHeight: 84,
                fieldWidth: 80,
                activeColor: Colors.grey[300],
                activeFillColor: Colors.grey[300],
                selectedColor: primaryColor,
                inactiveColor: Colors.grey[300],
                selectedFillColor: Colors.grey[300],
              ),
              enableActiveFill: true,
              keyboardType: TextInputType.number,
            ),
          ),

          Center(
            child: Text(
              'Request a new code in 00:30s',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),

          Gap(50),

          Center(child: CustomContainer(text: 'Verify Code')),
        ],
      ),
    );
  }
}
