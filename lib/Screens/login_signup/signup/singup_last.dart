import 'package:farmer_eats/widgets/page_title.dart';
import 'package:flutter/material.dart';

class SignUpLast extends StatelessWidget {
  const SignUpLast({Key? key}) : super(key: key);

  static const routeName = 'last';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/tick.png'),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    PageTitle(title: "You're all done!"),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const Text(
                      "Hang tight! We are currently reviewing your account and will follow up with you in 2-3 business days. In the meantime, you can setup your inventory.",
                      style: TextStyle(
                          color: Color(0xff898989),
                          fontSize: 12,
                          height: 1.5,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    )
                  ]),
            ),
            MaterialButton(
              height: 52,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(117)),
              minWidth: double.infinity,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Got it",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
