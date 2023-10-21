import 'package:flutter/material.dart';
import 'package:project2/customs/appBarmethod.dart';
import 'package:project2/customs/customWidget.dart';
import 'package:project2/customs/profileContainer.dart';
import 'package:project2/screens/firstPage.dart';
import 'package:project2/textStyle/textStyle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarmethod(context, ''),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child:
                    ClipRRect(child: Image.asset("assets/profilePicture.png")),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Itoh",
                style: TitleStyle(),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "+1 11229382748",
                style: style2(),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Column(
            children: [
              TextContainer(
                textEntry: 'My Profile',
              ),
              TextContainer(
                textEntry: 'Change Password',
              ),
              TextContainer(
                textEntry: 'Payment Settings',
              ),
              TextContainer(
                textEntry: 'My Voucher',
              ),
              TextContainer(
                textEntry: 'Notification',
              ),
              TextContainer(
                textEntry: 'About Us',
              ),
              TextContainer(
                textEntry: 'Contact Us',
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          ContainerWidgetsButton(
              backgroundColor: 0xffECF0F1,
              textEntry: 'Sign Out',
              textColor: 0xff000000,
              pageName: FirstPage())
        ]),
      ),
    );
  }
}
