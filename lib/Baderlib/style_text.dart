import 'package:flutter/material.dart';

class ContrastText extends StatelessWidget {
  final String text;

  const ContrastText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 24),
    );
  }
}
