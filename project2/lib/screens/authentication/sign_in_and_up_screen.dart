import 'package:flutter/material.dart';
import 'package:project2/screens/authentication/sign_in_screen.dart';
import 'package:project2/screens/authentication/sign_up_screen.dart';
import 'components/exports.dart';

class SignInAndUpScreen extends StatelessWidget {
  const SignInAndUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFE7A87E),
                ),
                child: Image.asset("assets/images/hamburger 1.png"),
              ),
              const SizedBox(height: 50),
              AuthButton(
                  buttonColor: signInButtonColor,
                  textContent: "Sign In",
                  textColor: signInTextColor,
                  func: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ));
                  }),
              const SizedBox(height: 20),
              AuthButton(
                  buttonColor: signUpButtonColor,
                  textContent: "Sign Up",
                  textColor: signUpTextColor,
                  func: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ));
                  }),
              const SizedBox(height: 80),
              const ConnectWithRow(),
            ],
          ),
        ),
      ),
    );
  }
}
