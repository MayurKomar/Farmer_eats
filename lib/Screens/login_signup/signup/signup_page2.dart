import 'package:farmer_eats/widgets/input_filed.dart';
import 'package:farmer_eats/widgets/page_title.dart';
import 'package:flutter/material.dart';

class SignUpPage2 extends StatelessWidget {
  const SignUpPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Signup 2 of 4",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.3)),
        ),
        SizedBox(
          height: size.height * .02,
        ),
        PageTitle(title: "Farm Info"),
        SizedBox(
          height: size.height * .05,
        ),
        InputField(
            filedText: 'Business Name', imagePath: 'assets/images/tag.png'),
        SizedBox(
          height: size.height * .02,
        ),
        InputField(
            filedText: 'Informal Name', imagePath: 'assets/images/smile.png'),
        SizedBox(
          height: size.height * .02,
        ),
        InputField(
            filedText: 'Street Address', imagePath: 'assets/images/home.png'),
        SizedBox(
          height: size.height * .02,
        ),
        InputField(filedText: 'City', imagePath: 'assets/images/pin.png'),
        SizedBox(
          height: size.height * .02,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black.withOpacity(0.08)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "State",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/drop_down.png')
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black.withOpacity(0.08)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Zipcode",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.3)),
                            border: InputBorder.none)),
                  ),
                ))
          ],
        )
      ]),
    );
  }
}
