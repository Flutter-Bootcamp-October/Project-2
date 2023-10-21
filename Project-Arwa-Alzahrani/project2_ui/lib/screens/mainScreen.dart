import 'package:flutter/material.dart';
import 'package:project2_ui/custom_widget/custom_elevatedButton.dart';
import 'package:project2_ui/custom_widget/custom_footer.dart';
import 'package:project2_ui/screens/signIn.dart';
import 'package:project2_ui/screens/signUp.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 109),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Image.asset(
              "assets/images/hamburger.png",
            )),
            const SizedBox(
              height: 50,
            ),
            const CustomElevatedButton(
              text: "Sign In",
              colorBckground: Color.fromRGBO(211, 84, 0, 1),
              className: SignIn(),
              textColor: Color.fromRGBO(255, 255, 255, 1),
              widthButton: 354,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomElevatedButton(
                text: "Sign Up",
                colorBckground: Color.fromRGBO(236, 240, 241, 1),
                className: SignUp(),
                textColor: Color.fromRGBO(0, 0, 0, 1),
                widthButton: 354),
            const SizedBox(
              height: 100,
            ),
            const CustomFooter(),
          ],
        ),
      ),
    ));
  }
}
