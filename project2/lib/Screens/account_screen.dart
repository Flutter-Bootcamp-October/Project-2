import 'package:flutter/material.dart';
import 'package:project2/styles/custom_colors.dart';

import '../styles/custom_widgets.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/images/Ellipse 6.png"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Itoh",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text("+1 11229382748"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    ProfileInfo(text: "My Profile"),
                    ProfileInfo(text: "Change Password"),
                    ProfileInfo(text: "Payment Settings"),
                    ProfileInfo(text: "My Voucher"),
                    ProfileInfo(text: "Notification"),
                    ProfileInfo(text: "About Us"),
                    ProfileInfo(text: "Contact Us")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 354,
                child: Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
                  ),
                ),
                decoration: BoxDecoration(
                    color: gray, borderRadius: BorderRadius.circular(30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
