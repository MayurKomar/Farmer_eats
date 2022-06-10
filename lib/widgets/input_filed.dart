import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({required this.filedText, required this.imagePath});

  String imagePath = "";
  String filedText = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black.withOpacity(0.08)),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Row(children: [
            Image.asset(imagePath),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: filedText,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.3))),
                  )),
            )
          ])),
    );
  }
}
