import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenDivison extends StatelessWidget {
  ScreenDivison({super.key, required this.leftTitle, required this.rightTitle});
  String leftTitle;
  String rightTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftTitle,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          ),
          Text(
            rightTitle,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
