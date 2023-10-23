import 'package:flutter/material.dart';

class CustomLikeUnColored extends StatefulWidget {
  const CustomLikeUnColored({super.key});

  @override
  State<CustomLikeUnColored> createState() => _CustomLikeUnColoredState();
}

class _CustomLikeUnColoredState extends State<CustomLikeUnColored> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: const Color(0xffedf0f1)),
      height: 25,
      width: 25,
      child: Image.asset("assets/like.png"),
    );
  }
}
