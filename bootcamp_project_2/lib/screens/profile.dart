import 'package:bootcamp_project_2/custom_widgets/account_info.dart';
import 'package:bootcamp_project_2/custom_widgets/button.dart';
import 'package:bootcamp_project_2/custom_widgets/profile_option.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_10_percent.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_20_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_30_pixels.dart';
import 'package:bootcamp_project_2/screens/sign_in_up.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SpaceBy10Percent(),
            SpaceBy30Pixels(),
            AccountInfo(),
            SpaceBy20Pixels(),
            ProfileOption(text: 'My Profile'),
            ProfileOption(text: 'Change Password'),
            ProfileOption(text: 'Payment Settings'),
            ProfileOption(text: 'My Voucher'),
            ProfileOption(text: 'Notification'),
            ProfileOption(text: 'About Us'),
            ProfileOption(text: 'Contact Us'),
            SpaceBy10Percent(),
            Button(
              backgroundColor: Color(0xffECF0F1),
              fontColor: Colors.black,
              text: 'Sign Out',
              whereToPush: SignInUp(),
            ),
          ],
        ),
      ),
    );
  }
}
