import 'package:flutter/material.dart';

class CustomcontainerColor extends StatelessWidget {
  CustomcontainerColor({super.key, required this.clickcolor});

  Color clickcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clickcolor,
    );
  }
}
