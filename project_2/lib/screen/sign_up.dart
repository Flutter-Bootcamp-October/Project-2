import 'package:flutter/material.dart';
import 'package:project_2/widgets/tex_filed.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 150, left: 30),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            TexField(
              hintext: 'Enter Username',
              tru: false,
            ),
            TexField(
              hintext: 'Enter Password',
              tru: true,
            ),
            TexField(
              hintext: 'Confirm Password',
              tru: true,
            )
          ],
        ),
      ),
    );
  }
}
