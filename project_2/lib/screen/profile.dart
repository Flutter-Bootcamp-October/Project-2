import 'package:flutter/material.dart';
import 'package:project_2/screen/home_page.dart';
import 'package:project_2/widgets/button_in.dart';
import 'package:project_2/widgets/profile_text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
              child: Column(
            children: [
              Image.asset(
                "assets/Ellipse.png",
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Itoh",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "+1 11229382748",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: ProfileText(laftText: 'My Profile'),
              ),
              const ProfileText(laftText: 'Change Password'),
              const ProfileText(laftText: 'Payment Settings'),
              const ProfileText(laftText: 'My Voucher'),
              const ProfileText(laftText: 'Notification'),
              const ProfileText(laftText: 'About Us'),
              const ProfileText(laftText: 'Contact Us'),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ButtonIn(
                  nameText: 'Sign Out',
                  color: const Color.fromRGBO(236, 240, 241, 1),
                  colorText: Colors.black,
                  screen: const HomePage(),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
