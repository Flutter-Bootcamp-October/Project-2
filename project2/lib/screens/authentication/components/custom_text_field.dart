import 'package:flutter/material.dart';

import '../../../data/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: TextField(
        style: const TextStyle(
            fontWeight: FontWeight.w400, color: Color(0x00000080)),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(left: 30, top: 15, bottom: 15),
            fillColor: textFieldColor,
            filled: true,
            hintText: content,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ))),
      ),
    );
  }
}
