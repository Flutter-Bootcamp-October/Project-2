import 'package:flutter/material.dart';

class searchField extends StatelessWidget {
  const searchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            filled: true,
            prefixIcon: const Icon(
              Icons.search,
              size: 30,
              color: Color(0xff767879),
            ),
            fillColor: const Color(0xffECF0F1),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
            label: const Text(
              "search",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            )),
        style: const TextStyle(color: Color(0xff767879)),
      ),
    );
  }
}
