import 'package:flutter/material.dart';

class CustomProfilePic extends StatefulWidget {
  const CustomProfilePic({super.key});

  @override
  State<CustomProfilePic> createState() => _CustomProfilePicState();
}

class _CustomProfilePicState extends State<CustomProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        child: Image.asset(
          "assets/profilepic.png",
          fit: BoxFit.fill,
        ));
  }
}
