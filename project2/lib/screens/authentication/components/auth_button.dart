import 'package:flutter/material.dart';
import 'package:project2/extentions/size_extention.dart';

import '../../../data/colors.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.textContent,
    required this.buttonColor,
    required this.textColor,
    required this.func,
  });
  final String textContent;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: func,
        style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            fixedSize:
                Size(context.widthSize() * 0.9, context.heightSize() * .065),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        child: Text(
          textContent,
          style: TextStyle(
              color: textColor,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: "Poppins"),
        ));
  }
}
