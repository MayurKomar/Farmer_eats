import 'package:farmer_eats/widgets/button.dart';
import 'package:farmer_eats/widgets/farmer_eats_header.dart';
import 'package:farmer_eats/widgets/icon_button.dart';
import 'package:farmer_eats/widgets/input_filed.dart';
import 'package:farmer_eats/widgets/page_title.dart';
import 'package:farmer_eats/widgets/span_text.dart';
import 'package:flutter/material.dart';

import '../Password/forgot_password.dart';
import 'signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = 'Login';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FarmerEatsHeader(),
                SizedBox(
                  height: size.height * .11,
                ),
                PageTitle(title: "Welcome back!"),
                SizedBox(
                  height: size.height * 0.04,
                ),
                SpanText(nonSpanText: "New here?", spanText: " Create account",onSpanTap: (){
                  Navigator.pushNamed(context, SignUp.routeName);
                },),
                SizedBox(
                  height: size.height * 0.08,
                ),
                InputField(filedText: "Email Address", imagePath: "assets/images/at_symbol.png"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black.withOpacity(0.08)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20),
                    child: Row(children: [
                      Image.asset('assets/images/lock.png'),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.3))),
                            )),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, ForgotPassword.routeName);
                          },
                          child: const Text(
                            "Forgot?",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )),
                    ]),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Button(text: "Login",onButtonPressed: () {},),
                SizedBox(
                  height: size.height * .05,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "or login with",
                    style: TextStyle(
                        fontSize: 10, color: Colors.black.withOpacity(0.3)),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.045,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(imagePath: 'assets/images/google.svg'),
                    CustomIconButton(imagePath: 'assets/images/apple.svg'),
                    CustomIconButton(imagePath: 'assets/images/facebook.svg')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
