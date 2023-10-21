import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.hint, required this.hideInput});
  final String hint;
  final bool hideInput;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        width: 354,
        child: TextField(
            obscureText: hideInput,
            decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFECF0F1),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xFFECF0F1))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xFFECF0F1))),
                hintText: hint)),
      ),
    );
  }
}
