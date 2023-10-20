import 'package:flutter/material.dart';
import 'package:project_2/methods/ap_bar.dart';
import 'package:project_2/widgets/nav_bar.dart';
import 'package:project_2/widgets/button_in.dart';
import 'package:project_2/widgets/facebook_google.dart';
import 'package:project_2/widgets/tex_filed.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: apbar(title: ""),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 150, left: 30),
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            //calling TexFiled widget
            child: TexField(hintext: 'Enter Username', tru: false),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            //calling TexFiled widget
            child: TexField(hintext: 'Enter Password', tru: true),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            //calling ButtonIn widget
            child: ButtonIn(
              nameText: 'Sign In',
              color: const Color.fromRGBO(211, 84, 0, 1),
              screen: const NavBar(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 275),
            child: Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 170,
          ),
          Row(
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.7,
                color: const Color.fromRGBO(52, 73, 94, 0.3),
              ),
              const Text("Or connect with")
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: FacebookGoogle(),
          ),
        ],
      )),
    );
  }
}
