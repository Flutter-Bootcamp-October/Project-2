import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/custom_choose_sign_in_up.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/custom_connect_with.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/custom_logo_pic.dart';

class CustomLogoScreen extends StatefulWidget {
  const CustomLogoScreen({super.key});

  @override
  State<CustomLogoScreen> createState() => _CustomLogoScreenState();
}

class _CustomLogoScreenState extends State<CustomLogoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomLogoPic(),
                CustomChooseSignInUp(
                  name: "Sign In",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomChooseSignInUp(
                  name: "Sign Up",
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        CustomConnectWith()
      ],
    );
  }
}
