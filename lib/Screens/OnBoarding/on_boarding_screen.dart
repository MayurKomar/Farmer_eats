import 'package:auto_size_text/auto_size_text.dart';
import 'package:farmer_eats/Screens/login_signup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int i = 0;
  int manualController = -1;

  final PageController _controller1 = PageController(initialPage: 0);
  final PageController _controller2 = PageController(initialPage: 0);

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  List<String> images = [
    'assets/images/onboarding_image1.png',
    'assets/images/onboarding_image2.png',
    'assets/images/onboarding_image3.png'
  ];
  List<Color> colors = [
    const Color.fromRGBO(94, 162, 95, 1),
    const Color.fromRGBO(213, 113, 91, 1),
    const Color.fromRGBO(248, 197, 105, 1)
  ];

  List<String> titles = [
    "Quality, Convenient, Local",
    "Door Delivery",
    "Love the Earth"
  ];

  List<String> descriptions = [
    "Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain.",
    "Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.",
    "We love the earth and know you do too! Join us in reducing our carbon footprint one order at a time. "
  ];

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller1.addListener(() {
      if (manualController == 1) {
        _controller2.jumpTo(_controller1.offset);
      }
    });
    _controller2.addListener(() {
      if (manualController == 2) {
        _controller1.jumpTo(_controller2.offset);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: colors[i],
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).viewPadding.top, bottom: 20),
              height: size.height * .5,
              child: GestureDetector(
                onTapDown: (details) {
                  manualController = 1;
                  setState(() {});
                },
                onTapUp: (details) {
                  manualController = -1;
                  setState(() {});
                },
                child: PageView.builder(
                    controller: _controller1,
                    onPageChanged: (value) => setState(() {
                          i = value;
                        }),
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Image.asset(
                        images[i],
                        fit: BoxFit.fill,
                      );
                    }),
              ),
            ),
            Container(
              height: size.height * .5,
              padding: EdgeInsets.only(top: size.height * 0.05),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTapDown: (details) {
                        manualController = 2;
                        setState(() {});
                      },
                      onTapUp: (details) {
                        manualController = -1;
                        setState(() {});
                      },
                      child: PageView.builder(
                          onPageChanged: (value) => setState(() {
                                i = value;
                              }),
                          controller: _controller2,
                          itemCount: 3,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                Text(
                                  titles[i],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * .04,
                                      vertical: size.height * .02),
                                  child: Expanded(
                                    child: AutoSizeText(
                                      descriptions[i],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          overflow: TextOverflow.fade,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                )
                              ],
                            );
                          })),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Column(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => buildDot(index, context),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .07,
                      ),
                      MaterialButton(
                        color: colors[i],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 24),
                        textColor: Colors.white,
                        child: const Text(
                          "Join the movement!",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () async {
                          final SharedPreferences prefs = await _prefs;
                          prefs.setBool('isNewUser', false);
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.routeName);
                        },
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      TextButton(
                          onPressed: () async {
                            final SharedPreferences prefs = await _prefs;
                            prefs.setBool('isNewUser', false);
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.routeName);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).viewPadding.bottom,
                      )
                    ]),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: i == index ? 16 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
    );
  }
}
