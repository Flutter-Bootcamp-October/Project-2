import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/custom_sign_up.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Center(
        child: ListView(
          children: const [
            CustomSignUp(),
          ],
        ),
      )),
    );
  }
}
