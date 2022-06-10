import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FarmerEatsHeader extends StatelessWidget {
  const FarmerEatsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "FarmerEats",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}
