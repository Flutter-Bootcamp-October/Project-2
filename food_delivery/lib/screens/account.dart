import 'package:flutter/material.dart';
import 'package:food_delivery/screens/sign_in_up.dart';
import 'package:food_delivery/widgets/button1.dart';
import 'package:food_delivery/widgets/section_account.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120, right: 120, top: 50),
                child: Column(children: [
                  Image.asset('lib\\assets\\Ellipse 6.png'),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Itoh',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text('+1 11229382748',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal))
                ]),
              ),
              const Sectionaccount(
                text: 'My Profile',
              ),
              const Sectionaccount(
                text: 'Change Password',
              ),
              const Sectionaccount(
                text: 'Payment Settings',
              ),
              const Sectionaccount(
                text: 'My Voucher',
              ),
              const Sectionaccount(
                text: 'Notification',
              ),
              const Sectionaccount(
                text: 'About Us',
              ),
              const Sectionaccount(
                text: 'Contact Us',
              ),
              Button1(
                Colorbutton: const Color(0xffECF0F1),
                title: 'Sign out',
                isTrue: false,
                pushto: const Signpage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
