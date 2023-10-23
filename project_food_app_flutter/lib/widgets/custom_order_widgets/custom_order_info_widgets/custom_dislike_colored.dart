import 'package:flutter/material.dart';

class CustomDislikeColored extends StatefulWidget {
  const CustomDislikeColored({super.key});

  @override
  State<CustomDislikeColored> createState() => _CustomDislikeColoredState();
}

class _CustomDislikeColoredState extends State<CustomDislikeColored> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: const Color(0xffD35400)),
      height: 25,
      width: 25,
      child: Image.asset("assets/white_unlike.png"),
    );
  }
}
