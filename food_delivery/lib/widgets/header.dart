import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key,
      required this.title,
      required this.fontsize,
      required this.color});
  final String title;
  final double fontsize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        title,
        style: TextStyle(
            fontFamily: "Roboto",
            fontSize: fontsize,
            fontWeight: FontWeight.bold,
            color: color),
      ),
    );
  }
}
