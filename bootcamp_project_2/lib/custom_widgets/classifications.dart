import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Classifications extends StatelessWidget {
  Classifications(
      {super.key,
      required this.backGroundColor,
      required this.src,
      required this.title,
      required this.iconColor});
  Color backGroundColor;
  Color iconColor;
  String src;
  String title;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 17),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: backGroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                src,
                color: iconColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 3),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
