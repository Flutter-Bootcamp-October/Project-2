import 'package:flutter/material.dart';

class CustomDislikeUnColored extends StatefulWidget {
  const CustomDislikeUnColored({super.key});

  @override
  State<CustomDislikeUnColored> createState() => _CustomDislikeUnColoredState();
}

class _CustomDislikeUnColoredState extends State<CustomDislikeUnColored> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: const Color(0xffedf0f1)),
      height: 25,
      width: 25,
      child: Image.asset("assets/unlike.png"),
    );
  }
}
