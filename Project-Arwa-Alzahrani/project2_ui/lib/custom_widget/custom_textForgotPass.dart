import 'package:flutter/material.dart';

class CustomTextForgotPass extends StatelessWidget {
  const CustomTextForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 33),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          "Forgot Password?",
          style: TextStyle(fontSize: 10, color: Color(0xff34495E)),
        ),
      ),
    );
  }
}
