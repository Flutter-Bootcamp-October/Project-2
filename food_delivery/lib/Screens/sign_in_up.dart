import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/sign_in.dart';
import 'package:food_delivery/Screens/sign_up.dart';
import 'package:food_delivery/Widgets/botton.dart';
import 'package:food_delivery/Widgets/or_connect_with.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 109),
            child: Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(127, 211, 84, 0)),
                child: Center(
                  child: Image.asset("images\\hamburger.png"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          AppBotton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignIn()));
            },
            text: "Sign In",
            color: appOrange,
          ),
          const SizedBox(
            height: 20,
          ),
          AppBotton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
            text: "Sign Up",
            color: appgrey,
            textColor: Colors.black,
          ),
          const SizedBox(
            height: 100,
          ),
          const OrConnectWith()
        ],
      ),
    );
  }
}
