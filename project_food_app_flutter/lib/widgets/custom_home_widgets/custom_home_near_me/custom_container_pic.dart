import 'package:flutter/material.dart';

class CustomContainerPic extends StatefulWidget {
  const CustomContainerPic({super.key});

  @override
  State<CustomContainerPic> createState() => _CustomContainerPicState();
}

class _CustomContainerPicState extends State<CustomContainerPic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image.asset("assets/food.png", fit: BoxFit.fill),
    );
  }
}
