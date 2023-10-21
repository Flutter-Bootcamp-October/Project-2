import 'package:flutter/material.dart';
import 'package:project2_ui/custom_widget/custom_elevatedButton.dart';
import 'package:project2_ui/custom_widget/custom_listTile.dart';
import 'package:project2_ui/screens/mainScreen.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/pictureProfile.png",
                    width: 130,
                    height: 130,
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Itoh",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "+1 11229382748",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const CustomListTile(
              textListTile: "My Profile",
            ),
            const CustomListTile(
              textListTile: "Change Password",
            ),
            const CustomListTile(
              textListTile: "Payment Settings",
            ),
            const CustomListTile(
              textListTile: "My Voucher",
            ),
            const CustomListTile(
              textListTile: "Notification",
            ),
            const CustomListTile(
              textListTile: "About Us",
            ),
            const CustomListTile(
              textListTile: "Contact Us",
            ),
            const CustomElevatedButton(
                colorBckground: Color.fromRGBO(236, 240, 241, 1),
                text: "Sign Out",
                className: MainScreen(),
                textColor: Color.fromRGBO(0, 0, 0, 1),
                widthButton: 330)
          ],
        ),
      ),
    );
  }
}
