import 'package:farmer_eats/Screens/Password/new_password.dart';
import 'package:farmer_eats/widgets/button.dart';
import 'package:farmer_eats/widgets/farmer_eats_header.dart';
import 'package:farmer_eats/widgets/page_title.dart';
import 'package:farmer_eats/widgets/span_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  static const String routeName = 'VerifyOtp';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const FarmerEatsHeader(),
              SizedBox(
                height: size.height * .11,
              ),
              PageTitle(title: "Verify OTP"),
              SizedBox(
                height: size.height * 0.04,
              ),
              SpanText(
                nonSpanText: "Remember your password?",
                spanText: " Login",
                onSpanTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/', (Route<dynamic> route) => false);
                },
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              OtpTextField(
                fieldWidth: size.width * .123,
                showFieldAsBox: true,
                numberOfFields: 6,
                borderColor: const Color(0x00ffffff),
                borderRadius: BorderRadius.circular(8),
                filled: true,
                fillColor: Colors.black.withOpacity(0.08),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Button(
                text: "Submit",
                onButtonPressed: () {
                  Navigator.pushReplacementNamed(context, NewPassword.routeName);
                },
              ),
              SizedBox(
                height: size.height * .015,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend Code",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
