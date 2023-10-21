import 'package:flutter/material.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.text,
      this.icon = const Icon(null),
      this.obscureText = false});
  final String text;
  final Icon icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 370,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: text,
          filled: true,
          fillColor: appgrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
        ),
      ),
    );
  }
}
