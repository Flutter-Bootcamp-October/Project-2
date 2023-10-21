import 'package:flutter/material.dart';
import 'package:project_2/screen/sign_in.dart';
import 'package:project_2/screen/sign_up.dart';
import 'package:project_2/widgets/button_in.dart';
import 'package:project_2/widgets/facebook_google.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset(
              "assets\\hamburger 1.png",
              height: 300,
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
            child: ButtonIn(
              nameText: 'Sign In',
              color: const Color.fromRGBO(211, 84, 0, 1),
              screen: const SignIn(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
            child: ButtonIn(
              nameText: 'Sign Up',
              color: const Color.fromRGBO(236, 240, 241, 1),
              colorText: Colors.black,
              screen: const SignUP(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 156),
            child: Row(
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: const Color.fromRGBO(52, 73, 94, 0.3),
                ),
                const Text("Or connect with")
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: FacebookGoogle(),
          ),
        ],
      ),
    ));
  }
}
