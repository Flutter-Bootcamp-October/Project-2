import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';
import 'package:project_two/widgets/my_button.dart';

class Starter extends StatelessWidget {
  const Starter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SafeArea(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
                top: context.getHeightSizing(number: 0.10),
                bottom: context.getHeightSizing(number: 0.05)),
            child: Image.asset('lib/assets/images/hamburger.png'),
          ),
          const MyButton(
            buttonTitle: "Sign In",
            buttonColor: Color(0xFFD35400),
            textColor: Color(0xFFFFFFFF),
          ),
          const MyButton(
            buttonTitle: "Sign Up",
            buttonColor: Color(0xFFECF0F1),
            textColor: Color(0xFF000000),
          ),
        ]),
      )),
    );
  }
}
