import 'package:farmer_eats/widgets/button.dart';
import 'package:farmer_eats/widgets/farmer_eats_header.dart';
import 'package:farmer_eats/widgets/input_filed.dart';
import 'package:farmer_eats/widgets/page_title.dart';
import 'package:farmer_eats/widgets/span_text.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  static const String routeName = 'newPassword';

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
              PageTitle(title: "Reset Password"),
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
              InputField(
                  filedText: "New Password",
                  imagePath: 'assets/images/lock.png'),
              const SizedBox(
                height: 20,
              ),
              InputField(
                  filedText: "Confirm Password",
                  imagePath: 'assets/images/lock.png'),
              SizedBox(
                height: size.height * 0.03,
              ),
              Button(
                text: "Submit",
                onButtonPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/', (Route<dynamic> route) => false);
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
