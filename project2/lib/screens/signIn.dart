import 'package:flutter/material.dart';
import 'package:project2/customs/appBarmethod.dart';
import 'package:project2/customs/customWidget.dart';
import 'package:project2/main.dart';
import 'package:project2/textStyle/textStyle.dart';

import '../customs/TextFieldCustom.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarmethod(this.context, ''),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 125,
            ),
            Text(
              "Sign In",
              style: TitleStyle2(),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextFieldCustom(textEntry: "Username"),
            const TextFieldCustom(textEntry: "Password"),
            const SizedBox(
              height: 30,
            ),
            const ContainerWidgetsButton(
              textEntry: "Sign In",
              backgroundColor: 0xffD35400,
              textColor: 0xFFFFFFFF,
              pageName: buttomNavigationBar(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?"),
              ],
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
      ),
    );
  }
}
