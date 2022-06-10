import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.text, required this.onButtonPressed});

  String text;
  VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      onPressed: onButtonPressed,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(117)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
