import 'package:project2/screens/home/custom_bottom_navigation_bar.dart';

import 'components/exports.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              style: IconButton.styleFrom(highlightColor: Colors.transparent),
              icon: const Icon(Icons.keyboard_arrow_left_sharp),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 150),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CustomTextField(content: "Username"),
            const SizedBox(height: 15),
            const CustomTextField(content: "Password"),
            const SizedBox(height: 25),
            AuthButton(
              textContent: "Sign In",
              buttonColor: signInButtonColor,
              textColor: signInTextColor,
              func: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomBottomNavigationBar(),
                    ));
              },
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 22),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Color(0xFF34495E)),
                ),
              ),
            ),
            const SizedBox(height: 130),
            const ConnectWithRow(),
          ],
        ),
      ),
    );
  }
}
