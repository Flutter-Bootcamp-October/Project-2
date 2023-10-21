import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/bottom_nav_bar.dart';
import 'package:food_delivery/Widgets/botton.dart';
import 'package:food_delivery/Widgets/or_connect_with.dart';
import 'package:food_delivery/Widgets/text_field.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
              size: 20,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 32, bottom: 16),
              child: Text(
                "Sign in",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            const Center(
              child: AppTextField(
                text: 'Username',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Center(
              child: AppTextField(
                text: 'Password',
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: AppBotton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AppBottomNavBar()));
                },
                text: "Sign In",
                color: appOrange,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 250),
              child: Text(
                "Forgot password?",
                style: TextStyle(color: Color(0xff34495E), fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            const OrConnectWith()
          ],
        ),
      ),
    );
  }
}
