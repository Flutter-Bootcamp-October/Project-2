import 'package:flutter/material.dart';

class CustomLogoPic extends StatelessWidget {
  const CustomLogoPic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xffdfac85)),
        child: Image.asset("assets/hamburger.png"),
      ),
    );
  }
}
