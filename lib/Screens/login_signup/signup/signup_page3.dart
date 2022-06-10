import 'package:farmer_eats/widgets/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp3 extends StatelessWidget {
  const SignUp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Signup 3 of 4",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.3)),
        ),
        SizedBox(
          height: size.height * .02,
        ),
        PageTitle(title: "Verification"),
        SizedBox(
          height: size.height * .05,
        ),
        Text(
          "Attached proof of Department of Agriculture registrations i.e. Florida Fresh, USDA Approved, USDA Organic",
          style: TextStyle(
              color: Colors.black.withOpacity(0.3),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: size.height * .04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Attach proof of registration",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(100)),
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset('assets/images/camera.svg'),
            )
          ],
        )
      ]),
    );
  }
}
