import 'package:flutter/material.dart';
import 'package:project2/customs/appBarmethod.dart';
import 'package:project2/customs/customWidget.dart';
import 'package:project2/customs/TextFieldCustom.dart';
import 'package:project2/main.dart';
import 'package:project2/textStyle/textStyle.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
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
              "Sign Up",
              style: TitleStyle2(),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextFieldCustom(textEntry: "Enter Username"),
            const TextFieldCustom(textEntry: "Enter Password"),
            const TextFieldCustom(textEntry: "Re enter Password"),
            const SizedBox(
              height: 10,
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
              height: 85,
            ),
            const Row(
              children: [
                Expanded(
                    child: Divider(
                  endIndent: 12,
                  thickness: 1,
                  color: Color(0xff34495E),
                )),
                Text(
                  "Or connect with",
                  style: TextStyle(color: Color(0xff34495E), fontSize: 14),
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
