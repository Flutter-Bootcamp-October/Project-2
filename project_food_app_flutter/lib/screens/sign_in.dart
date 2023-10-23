import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/custom_sign_in.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInState();
}

class _SignInState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ListView(
          children: const [
            CustomSignIn(),
          ],
        ),
      )),
    );
  }
}
