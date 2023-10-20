import 'package:flutter/material.dart';
import 'package:project_two/screens/starter.dart';
import 'package:project_two/widgets/my_button.dart';
import 'package:project_two/widgets/profile_items_list.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 8),
                child: Image.asset('lib/assets/images/profile_picture.png'),
              ),
              const Text("Itoh",
                  style: TextStyle(
                      fontFamily: 'Poppines',
                      fontWeight: FontWeight.w700,
                      fontSize: 17)),
              const Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Text('+1 11229382748'),
              ),
              const ProfileItemList(),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const StarterScreen();
                  }));
                },
                child: const MyButton(
                    buttonTitle: 'Sign Out',
                    buttonColor: Color(0xFFECF0F1),
                    textColor: Colors.black),
              )
            ],
          )),
        ));
  }
}
