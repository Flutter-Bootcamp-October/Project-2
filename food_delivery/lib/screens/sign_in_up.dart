import 'package:flutter/material.dart';
import 'package:food_delivery/screens/sign_in.dart';
import 'package:food_delivery/screens/sign_up.dart';
import 'package:food_delivery/widgets/button1.dart';
import 'package:food_delivery/widgets/footer.dart';

class Signpage extends StatelessWidget {
  const Signpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(top: 190, left: 80, right: 80, bottom: 16),
        child: Container(
            width: 400,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 250, 194, 147),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset("lib\\assets\\image1.png")),
              ],
            )),
      ),
      const SizedBox(
        height: 16,
      ),
      Button1(
        Colorbutton: const Color(0xffD35400),
        title: 'Sign In',
        isTrue: true,
        pushto: const Signin(),
      ),
      Button1(
        Colorbutton: const Color(0xffECF0F1),
        title: 'Sign Up',
        isTrue: false,
        pushto: const Signup(),
      ),
      const Footer(
        top: 150,
      )
    ]));
  }
}
