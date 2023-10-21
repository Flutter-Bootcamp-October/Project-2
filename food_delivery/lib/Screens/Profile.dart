import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/sign_in_up.dart';
import 'package:food_delivery/Widgets/botton.dart';
import 'package:food_delivery/Widgets/profile_settings.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          ClipOval(
            child: Image.asset(
              "images\\Profile.jpg",
              scale: 5,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "Miqdad",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          const Text("+966 55 908 0071"),
          const ProfileSetting(
            text: "My profile",
          ),
          const ProfileSetting(
            text: "Change password",
          ),
          const ProfileSetting(
            text: "Payment setting",
          ),
          const ProfileSetting(
            text: "My Voucher",
          ),
          const ProfileSetting(
            text: "Notification",
          ),
          const ProfileSetting(
            text: "About us",
          ),
          const ProfileSetting(
            text: "Contact us",
          ),
          const SizedBox(
            height: 104,
          ),
          AppBotton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignInUp()));
            },
            text: "Sign out",
            color: appgrey,
            textColor: Colors.black,
          ),
        ]),
      ),
    );
  }
}
