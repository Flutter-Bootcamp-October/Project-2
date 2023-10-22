import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button(
      {super.key,
      required this.backgroundColor,
      required this.fontColor,
      required this.text,
      required this.whereToPush});
  Color? backgroundColor;
  Color? fontColor;
  String text;
  Widget whereToPush;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor,
            fixedSize: Size(357, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => whereToPush));
        },
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
