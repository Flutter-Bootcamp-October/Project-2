import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint});
  String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        decoration: InputDecoration(
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
