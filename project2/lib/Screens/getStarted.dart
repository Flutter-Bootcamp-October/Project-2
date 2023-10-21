import 'package:flutter/material.dart';
import 'package:project2/Screens/sign_in_screen.dart';
import 'package:project2/Screens/sign_up_screen.dart';

import '../styles/custom_colors.dart';

class GetStarted extends StatelessWidget {
  GetStarted({super.key});
  final ButtonStyle buttonSingIn = ElevatedButton.styleFrom(
    minimumSize: Size(354, 50),
    backgroundColor: orang,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
  );
  final ButtonStyle buttonSingUp = ElevatedButton.styleFrom(
    minimumSize: Size(354, 50),
    backgroundColor: gray,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60, top: 100),
          child: Center(child: Image.asset("assets/images/hamburger 1.png")),
        ),
        Column(
          children: [
            ElevatedButton(
                style: buttonSingIn,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: buttonSingUp,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 80),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/Vector 1.png",
                    width: 264,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Or connect with"),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/facebook 1.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset("assets/images/google-plus 1.png"),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
