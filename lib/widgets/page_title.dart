import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  PageTitle({required this.title});

  String title = "";

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
    );
  }
}
