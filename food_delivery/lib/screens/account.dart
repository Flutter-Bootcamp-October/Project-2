import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/account_list.dart';
import 'package:food_delivery/widgets/buttons.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 60),
                  child: Image.asset("assets/Images/userprofile.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Itoh",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("+1 11229382748"),
                ),
                const AccountList(title: "My Profile"),
                const AccountList(title: "Change Password"),
                const AccountList(title: "Payment Settings"),
                const AccountList(title: "My Voucher"),
                const AccountList(title: "Notification"),
                const AccountList(title: "About Us"),
                const AccountList(title: "Contact Us"),
                const SizedBox(
                  height: 0,
                ),
                Button(
                    title: "Sign Out",
                    color: Color(0xff000000),
                    backgroundColor: Color(0xffECF0F1),
                    onpressed: () {}),
              ],
            ),
          ),
        ));
  }
}
