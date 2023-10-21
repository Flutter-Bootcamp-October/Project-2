import 'package:flutter/material.dart';

import '../authentication/components/auth_button.dart';
import '../authentication/sign_in_and_up_screen.dart';
import 'components/exports.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              children: [
                const Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        foregroundImage:
                            AssetImage("assets/images/Ellipse 6.png"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Itoh",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text("+1 11229382748",
                          style: TextStyle(fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Expanded(flex: 0, child: ProfileItemsList()),
                const SizedBox(height: 60),
                Expanded(
                  flex: 0,
                  child: AuthButton(
                      textContent: "Sign Out",
                      buttonColor: signUpButtonColor,
                      textColor: signUpTextColor,
                      func: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInAndUpScreen(),
                            ));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
