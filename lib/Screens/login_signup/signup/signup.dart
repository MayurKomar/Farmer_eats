import 'package:farmer_eats/Screens/login_signup/signup/signup_page1.dart';
import 'package:farmer_eats/Screens/login_signup/signup/signup_page2.dart';
import 'package:farmer_eats/Screens/login_signup/signup/signup_page3.dart';
import 'package:farmer_eats/Screens/login_signup/signup/signup_page4.dart';
import 'package:farmer_eats/Screens/login_signup/signup/singup_last.dart';
import 'package:farmer_eats/widgets/farmer_eats_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  static const String routeName = 'signUp';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<Widget> items = [
    const SignUp1(),
    const SignUpPage2(),
    const SignUp3(),
    Signup4()
  ];

  final PageController _controller = PageController();

  int i = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const FarmerEatsHeader(),
          SizedBox(
            height: size.height * .05,
          ),
          Expanded(
            child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    i = value;
                  });
                },
                controller: _controller,
                itemCount: 4,
                itemBuilder: (_, i) {
                  return items[i];
                }),
          ),
          SizedBox(height: size.height * .04,),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: i == 0
                      ? GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                              onTap: () {
                                _controller.previousPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn);
                              },
                              child:
                                  SvgPicture.asset('assets/images/back.svg')),
                        ),
                ),
                MaterialButton(
                  onPressed: () {
                    i == 3
                        ? Navigator.pushReplacementNamed(
                            context, SignUpLast.routeName)
                        : _controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                  },
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(117)),
                  minWidth: size.width * .6,
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    i == 3 ? "Sign Up" : "Continue",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}
