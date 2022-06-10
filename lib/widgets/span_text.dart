import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SpanText extends StatelessWidget {
  SpanText(
      {required this.nonSpanText,
      required this.spanText,
      required this.onSpanTap});

  String nonSpanText = "";
  String spanText = "";
  VoidCallback onSpanTap;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: nonSpanText,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.3)),
        ),
        TextSpan(
            text: spanText,
            recognizer: TapGestureRecognizer()..onTap = onSpanTap,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).primaryColor))
      ]),
    );
  }
}
