import 'package:flutter/material.dart';

class CustomLikeColored extends StatefulWidget {
  const CustomLikeColored({super.key});

  @override
  State<CustomLikeColored> createState() => _CustomLikeColoredState();
}

class _CustomLikeColoredState extends State<CustomLikeColored> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: const Color(0xffD35400)),
      height: 25,
      width: 25,
      child: Image.asset("assets/white_like.png"),
    );
  }
}
