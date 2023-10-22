import 'package:bootcamp_project_2/custom_widgets/back_icon.dart';
import 'package:bootcamp_project_2/custom_widgets/button.dart';
import 'package:bootcamp_project_2/custom_widgets/connect.dart';
import 'package:bootcamp_project_2/custom_widgets/custom_text_field.dart';
import 'package:bootcamp_project_2/custom_widgets/forgot_password_widget.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_10_percent.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_20_percent.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_20_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_40_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_60_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/title.dart';
import 'package:bootcamp_project_2/screens/navigationBarController.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBy60Pixels(),
            BackIcon(),
            SpaceBy20Percent(),
            ScreenTitle(
              title: 'Sign In',
            ),
            SpaceBy20Pixels(),
            CustomTextField(
              hint: 'User Name',
            ),
            SpaceBy20Pixels(),
            CustomTextField(
              hint: 'Password',
            ),
            SpaceBy40Pixels(),
            Button(
              backgroundColor: Color(0xffD35400),
              fontColor: Colors.white,
              text: 'Sign In',
              whereToPush: NavigationBarController(),
            ),
            ForgotPasswordWidget(),
            SpaceBy10Percent(),
            SpaceBy40Pixels(),
            Connect(),
          ],
        ),
      ),
    );
  }
}
