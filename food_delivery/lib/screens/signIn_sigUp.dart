import 'package:flutter/material.dart';
import 'package:food_delivery/screens/signIn.dart';
import 'package:food_delivery/screens/signUp.dart';
import 'package:food_delivery/widgets/buttons.dart';
import 'package:food_delivery/widgets/footer.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.only(top: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffe8a87f),
                ),
                child: Image.asset("assets/Images/hamburger.png"),
              ),
            ),
            Button(
                title: "Sign In",
                color: Color(0xffFFFFFF),
                backgroundColor: Color(0xffD35400),
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const SignIn();
                    },
                  ));
                }),
            Button(
                title: "Sign Up",
                color: Color(0xff000000),
                backgroundColor: Color(0xffECF0F1),
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const SignUp();
                    },
                  ));
                }),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
