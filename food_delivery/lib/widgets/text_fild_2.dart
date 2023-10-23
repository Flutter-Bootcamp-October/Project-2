import 'package:flutter/material.dart';

class Textfild2 extends StatelessWidget {
  const Textfild2({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: hint,
            fillColor: Colors.grey[200],
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }
}
