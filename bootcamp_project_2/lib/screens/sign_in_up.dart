import 'package:bootcamp_project_2/custom_widgets/burger_logo.dart';
import 'package:bootcamp_project_2/custom_widgets/button.dart';
import 'package:bootcamp_project_2/custom_widgets/connect.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_40_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_20_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_10_percent.dart';
import 'package:bootcamp_project_2/screens/sign_in.dart';
import 'package:bootcamp_project_2/screens/sign_up.dart';
import 'package:flutter/material.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SpaceBy10Percent(),
            SpaceBy20Pixels(),
            BurgerLogo(),
            SpaceBy40Pixels(),
            SpaceBy20Pixels(),
            Button(
              text: 'Sign in',
              backgroundColor: Color(0xffD35400),
              fontColor: Colors.white,
              whereToPush: SignIn(),
            ),
            SpaceBy20Pixels(),
            Button(
              backgroundColor: Color(0xffECF0F1),
              text: 'Sign up',
              fontColor: Colors.black,
              whereToPush: SignUp(),
            ),
            SpaceBy10Percent(),
            SpaceBy40Pixels(),
            Connect(),
          ],
        ),
      ),
    );
  }
}
