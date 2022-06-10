import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:farmer_eats/widgets/page_title.dart';
import 'package:flutter/material.dart';

class Signup4 extends StatefulWidget {
  Signup4({Key? key}) : super(key: key);

  @override
  State<Signup4> createState() => _Signup4State();
}

class _Signup4State extends State<Signup4> {
  int selectedIndex = -1;

  List<int> selectedIndices = [];

  List<String> days = ['M', 'T', 'W', 'Th', 'F', 'S', 'Su'];

  List<String> timings = [
    "8:00am - 10:00am",
    "10:00am - 1:00pm",
    "1:00pm - 4:00pm",
    "4:00pm - 7:00pm",
    "7:00pm - 10:00pm"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Signup 4 of 4",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.3)),
        ),
        SizedBox(
          height: size.height * .02,
        ),
        PageTitle(title: "Business Hours"),
        SizedBox(
          height: size.height * .05,
        ),
        Text(
          "Choose the hours your farm is open for pickups. This will allow customers to order deliveries.",
          style: TextStyle(
              color: Colors.black.withOpacity(0.3),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: size.height * .04,
        ),
        ChipsChoice<int>.single(
          value: selectedIndex,
          onChanged: (val) => setState(() {
            selectedIndex = val;
          }),
          choiceItems: C2Choice.listFrom<int, String>(
              source: days,
              value: (i, v) => i,
              label: (i, v) => v,
              disabled: (i, v) => [3, 4, 5, 6].contains(i)),
          wrapped: true,
          spacing: 5,
          choiceActiveStyle: C2ChoiceStyle(
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            color: Colors.white,
            backgroundColor: Theme.of(context).primaryColor,
            showCheckmark: false,
            padding: const EdgeInsets.all(10),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          choiceStyle: C2ChoiceStyle(
              color: Colors.black,
              backgroundColor: Colors.black.withOpacity(0.08),
              labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              showCheckmark: false,
              padding: const EdgeInsets.all(10),
              borderRadius: const BorderRadius.all(Radius.circular(8))),
        ),
        ChipsChoice<int>.multiple(
          spacing: 5,
          value: selectedIndices,
          onChanged: (val) {
            setState(() {
              selectedIndices = val;
            });
          },
          choiceItems: C2Choice.listFrom<int, String>(
              source: timings, value: (i, v) => i, label: (i, v) => v),
          choiceActiveStyle: const C2ChoiceStyle(
              showCheckmark: false,
              color: Colors.black,
              backgroundColor: Color(0xffF8C569),
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              padding: EdgeInsets.all(10),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          choiceStyle: C2ChoiceStyle(
            color: Colors.black,
            backgroundColor: Colors.black.withOpacity(0.08),
            labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            showCheckmark: false,
            padding: const EdgeInsets.all(10),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          wrapped: true,
        )
      ]),
    );
  }
}
