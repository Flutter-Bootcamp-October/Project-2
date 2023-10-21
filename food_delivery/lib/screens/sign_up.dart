import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_navigationBar.dart';
import 'package:food_delivery/widgets/button1.dart';
import 'package:food_delivery/widgets/footer.dart';
import 'package:food_delivery/widgets/text_fild_1.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.grey,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 250, top: 70),
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Textfild1(hint: 'Enter Username'),
          const Textfild1(
            hint: 'Enter Password',
          ),
          const Textfild1(hint: 'Re-enter Password'),
          Button1(
            Colorbutton: const Color(0xffD35400),
            title: 'Sign In',
            isTrue: true,
            pushto: const BottomNavigationBarApp(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 230),
            child: Text(
              'Forgot Password?',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const Footer(top: 95)
        ],
      ),
    );
  }
}
