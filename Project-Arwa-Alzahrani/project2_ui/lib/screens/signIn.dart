import 'package:flutter/material.dart';
import 'package:project2_ui/custom_widget/custom_appBar.dart';
import 'package:project2_ui/custom_widget/custom_elevatedButton.dart';
import 'package:project2_ui/custom_widget/custom_footer.dart';
import 'package:project2_ui/custom_widget/custom_textField.dart';
import 'package:project2_ui/custom_widget/custom_textForgotPass.dart';
import 'package:project2_ui/screens/bottomNavigationBar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 160,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 33),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                CustomTextField(
                  textHintText: "Username",
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  textHintText: "Password",
                  passwordobscureText: true,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomElevatedButton(
                  text: "Sign In",
                  colorBckground: Color.fromRGBO(211, 84, 0, 1),
                  className: BottomNavigation(),
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                  widthButton: 330,
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextForgotPass(),
                SizedBox(
                  height: 150,
                ),
                CustomFooter(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
