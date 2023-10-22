import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFiledWithIcon extends StatelessWidget {
  CustomTextFiledWithIcon({super.key, required this.hint, required this.icon});
  String hint;
  Image icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: TextField(
        // cursorHeight: 10,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: '  $hint',
          hintStyle: TextStyle(
            fontFamily: 'Roboto',
            color: Color.fromARGB(128, 0, 0, 0),
            fontSize: 14,
          ),
          filled: true,
          fillColor: Color(0xffECF0F1),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
