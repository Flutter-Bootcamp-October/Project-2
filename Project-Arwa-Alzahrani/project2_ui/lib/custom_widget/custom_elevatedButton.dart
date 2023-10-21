import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.colorBckground,
      required this.text,
      required this.className,
      required this.textColor,
      required this.widthButton});
  final Color colorBckground;
  final String text;
  final Widget className;
  final Color textColor;
  final double widthButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: widthButton,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: colorBckground,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => className));
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: textColor),
        ),
      ),
    );
  }
}
