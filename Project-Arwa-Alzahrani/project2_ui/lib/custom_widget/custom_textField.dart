import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.textHintText,
      this.passwordobscureText = false});
  final String textHintText;
  final bool passwordobscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: const Color(0xffECF0F1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          decoration:
              InputDecoration(hintText: textHintText, border: InputBorder.none),
          obscureText: passwordobscureText,
        ),
      ),
    );
  }
}
