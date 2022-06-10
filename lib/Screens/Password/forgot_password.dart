import 'package:farmer_eats/Screens/Password/verify_otp.dart';
import 'package:farmer_eats/widgets/button.dart';
import 'package:farmer_eats/widgets/farmer_eats_header.dart';
import 'package:farmer_eats/widgets/input_filed.dart';
import 'package:farmer_eats/widgets/page_title.dart';
import 'package:farmer_eats/widgets/span_text.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static const String routeName = 'forgotPassword';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FarmerEatsHeader(),
              SizedBox(
                height: size.height * .11,
              ),
              PageTitle(title: "Forgot Password?"),
              SizedBox(
                height: size.height * 0.04,
              ),
              SpanText(
                nonSpanText: "Remember your password?",
                spanText: " Login",
                onSpanTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              InputField(
                  filedText: "Phone Number",
                  imagePath: 'assets/images/phone.png'),
              SizedBox(
                height: size.height * 0.03,
              ),
              Button(text: "Send Code",onButtonPressed: () {
                Navigator.pushNamed(context, VerifyOtp.routeName);
              },),
            ],
          ),
        )),
      ),
    );
  }
}
