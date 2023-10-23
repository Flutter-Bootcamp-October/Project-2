import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project2/customs/customWidget.dart';

import 'package:project2/screens/signIn.dart';
import 'package:project2/screens/signUp.dart';
import 'package:project2/textStyle/textStyle.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      color: const Color(0xffe9a87f),
                      borderRadius: BorderRadius.circular(30)),
                  child: Image.asset("assets/hamburger.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            ContainerWidgetsButton(
              textEntry: "Sign In",
              backgroundColor: 0xffD35400,
              textColor: 0xFFFFFFFF,
              pageName: SignIn(),
            ),
            const SizedBox(
              height: 20,
            ),
            ContainerWidgetsButton(
              textEntry: "Sign Up",
              backgroundColor: 0xffECF0F1,
              textColor: 0xff000000,
              pageName: SingUp(),
            ),
            const SizedBox(
              height: 120,
            ),
             Row(
              children: [
                Expanded(
                    child: Divider(
                  endIndent: 12,
                  thickness: 1,
                  color: Color(0xff34495E),
                )),
                Text(
                  "Or connect with",
                  style: style6(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/facebook.png",
                  width: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/googleplus.png",
                  width: 40,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
