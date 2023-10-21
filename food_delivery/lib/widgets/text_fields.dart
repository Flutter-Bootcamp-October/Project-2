import 'package:flutter/material.dart';

class Userinput extends StatelessWidget {
  const Userinput({super.key, required this.lable});

  final String lable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        width: 354,
        height: 50,
        child: TextField(
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(32.0),
            labelText: lable,
            labelStyle: const TextStyle(color: Color(0xff8a8c8d)),
            filled: true,
            fillColor: const Color(0xffECF0F1),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.orange),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
