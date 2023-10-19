import 'package:flutter/material.dart';
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
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 60, right: 30),
            child: ButtonIn(
              nameText: 'Sign In',
              color: Color.fromRGBO(211, 84, 0, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 20, right: 30),
            child: ButtonIn(
              nameText: 'Sign Up',
              color: Color.fromRGBO(236, 240, 241, 1),
            ),
          ),
          FacebookGoogle(),
        ],
      ),
    ));
  }
}


