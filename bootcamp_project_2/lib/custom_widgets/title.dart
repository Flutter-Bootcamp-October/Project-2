import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenTitle extends StatelessWidget {
  ScreenTitle({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
