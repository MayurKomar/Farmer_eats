import 'package:farmer_eats/widgets/icon_button.dart';
import 'package:farmer_eats/widgets/input_filed.dart';
import 'package:farmer_eats/widgets/page_title.dart';
import 'package:flutter/material.dart';

class SignUp1 extends StatelessWidget {
  const SignUp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Signup 1 of 4",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.3)),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          PageTitle(title: "Welcome!"),
          SizedBox(
            height: size.height * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(imagePath: 'assets/images/google.svg'),
              CustomIconButton(imagePath: 'assets/images/apple.svg'),
              CustomIconButton(imagePath: 'assets/images/facebook.svg')
            ],
          ),
          SizedBox(
            height: size.height * .04,
          ),
          Center(
              child: Text(
            "or signup with",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(.3)),
          )),
          SizedBox(
            height: size.height * .03,
          ),
          InputField(filedText: "Full Name", imagePath: 'assets/images/user.png'),
          SizedBox(
            height: size.height * .02,
          ),
          InputField(filedText: "Email Address", imagePath: 'assets/images/at_symbol.png'),
          SizedBox(
            height: size.height * .02,
          ),
          InputField(filedText: "Phone Number", imagePath: 'assets/images/phone.png'),
          SizedBox(
            height: size.height * .02,
          ),
          InputField(filedText: "Password", imagePath: 'assets/images/lock.png'),
          SizedBox(
            height: size.height * .02,
          ),
          InputField(filedText: "Confirm Password", imagePath: 'assets/images/lock.png'),
        ],
      ),
    );
  }
}
