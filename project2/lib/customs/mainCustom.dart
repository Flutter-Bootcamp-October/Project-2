import 'package:flutter/material.dart';

class MainCustom extends StatelessWidget {
  const MainCustom({super.key, required this.imageURL, required this.backgroundColor});
  final String imageURL;
  final dynamic backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Color(backgroundColor),
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
