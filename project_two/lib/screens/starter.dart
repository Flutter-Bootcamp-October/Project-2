import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';
import 'package:project_two/screens/signin.dart';
import 'package:project_two/screens/signup.dart';
import 'package:project_two/widgets/my_button.dart';
import 'package:project_two/widgets/scaffold_bottom.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: SafeArea(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
                top: context.getHeightSizing(number: 0.10),
                bottom: context.getHeightSizing(number: 0.05)),
            child: Image.asset('lib/assets/images/hamburger.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );
            },
            child: const MyButton(
              buttonTitle: "Sign In",
              buttonColor: Color(0xFFD35400),
              textColor: Color(0xFFFFFFFF),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()),
              );
            },
            child: const MyButton(
              buttonTitle: "Sign Up",
              buttonColor: Color(0xFFECF0F1),
              textColor: Color(0xFF000000),
            ),
          ),
          const SizedBox(height: 100),
          const ScaffoldBottom()
        ]),
      )),
    );
  }
}
