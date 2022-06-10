import 'package:farmer_eats/Constants/Constants.dart';
import 'package:farmer_eats/Screens/Password/forgot_password.dart';
import 'package:farmer_eats/Screens/Password/new_password.dart';
import 'package:farmer_eats/Screens/Password/verify_otp.dart';
import 'package:farmer_eats/Screens/login_signup/signup/signup.dart';
import 'package:farmer_eats/Screens/login_signup/signup/singup_last.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/OnBoarding/on_boarding_screen.dart';
import 'Screens/login_signup/login_screen.dart';

bool isNewUser = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  if (_prefs.getBool(Constants.isNewUser) != null) {
    isNewUser = _prefs.getBool(Constants.isNewUser)!;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: const MaterialColor(0xffD5715B, <int, Color>{
            50: Color(0xffD5715B),
            100: Color(0xffb74c3a),
            200: Color(0xffa04332),
            300: Color(0xff89392b),
            400: Color(0xff733024),
            500: Color(0xff5c261d),
            600: Color(0xff451c16),
            700: Color(0xff2e130e),
            800: Color(0xff170907),
            900: Color(0xff000000),
          }),
          fontFamily: "BeVietnam"),
      routes: {
        '/': (context) =>
            isNewUser ? const OnBoardingScreen() : const LoginScreen(),
        ForgotPassword.routeName: (context) => const ForgotPassword(),
        VerifyOtp.routeName: (context) => const VerifyOtp(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        NewPassword.routeName: (context) => const NewPassword(),
        SignUp.routeName: (context) => const SignUp(),
        SignUpLast.routeName: (context) => const SignUpLast()
      },
    );
  }
}
