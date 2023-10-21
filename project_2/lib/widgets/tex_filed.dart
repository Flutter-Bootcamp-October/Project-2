import 'package:flutter/material.dart';

class TexField extends StatelessWidget {
  TexField({
    super.key,
    required this.hintext,
    required this.tru,
  });
  final String hintext;
  final bool tru;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        obscureText: tru,
        decoration: InputDecoration(
            fillColor: const Color.fromRGBO(236, 240, 241, 1),
            filled: true,
            hintText: hintext,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(236, 240, 241, 1))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(236, 240, 241, 1)))),
      ),
    );
  }
}
