import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_profile_widget/custom_profile_info.dart';
import 'package:project_food_app_flutter/widgets/custom_profile_widget/custom_profile_name.dart';
import 'package:project_food_app_flutter/widgets/custom_profile_widget/custom_profile_phone_number.dart';
import 'package:project_food_app_flutter/widgets/custom_profile_widget/custom_profile_pic.dart';
import 'package:project_food_app_flutter/widgets/custom_profile_widget/custom_profile_signout_buttom.dart';

class CustomProfileScreen extends StatefulWidget {
  const CustomProfileScreen({super.key});

  @override
  State<CustomProfileScreen> createState() => _CustomProfileScreenState();
}

class _CustomProfileScreenState extends State<CustomProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: Column(
        children: [
          CustomProfilePic(),
          SizedBox(
            height: 20,
          ),
          CustomProfileName(),
          SizedBox(
            height: 10,
          ),
          CustomProfilePhoneNumber(),
          SizedBox(
            height: 20,
          ),
          CustomProfileInfo(),
          SizedBox(
            height: 30,
          ),
          CustomProfileSignOutButtom()
        ],
      ),
    );
  }
}
