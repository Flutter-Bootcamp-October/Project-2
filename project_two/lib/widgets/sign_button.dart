import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignButton extends StatelessWidget {
  const SignButton(
      {super.key,
      required this.buttonTitle,
      required this.buttonColor,
      required this.textColor});
  final String buttonTitle;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 50,
          width: 354,
          color: buttonColor,
          child: Center(
            child: Text(buttonTitle,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    color: textColor)),
          ),
        ),
      ),
    );
  }
}
