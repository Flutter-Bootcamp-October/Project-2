import 'package:bootcamp_project_2/screens/home.dart';
import 'package:bootcamp_project_2/screens/order.dart';
import 'package:bootcamp_project_2/screens/profile.dart';
import 'package:flutter/material.dart';

class NavigationBarController extends StatefulWidget {
  const NavigationBarController({super.key});

  @override
  State<NavigationBarController> createState() =>
      _NavigationBarControllerState();
}

class _NavigationBarControllerState extends State<NavigationBarController> {
  List screen = [
    Home(),
    Order(),
    Profile(),
  ];
  int index = 0;
  Color homeIconColor = Color(0xffD35400);
  Color orderIconColor = Color.fromARGB(128, 0, 0, 0);
  Color profileIconColor = Color.fromARGB(128, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xffD35400),
        useLegacyColorScheme: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/icons/store.png',
              color: homeIconColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/icons/order.png',
              color: orderIconColor,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'lib/assets/icons/user.png',
              color: profileIconColor,
            ),
            label: 'Profile',
          ),
        ],
        onTap: (value) {
          index = value;
          if (value == 0) {
            homeIconColor = Color(0xffD35400);
            orderIconColor = profileIconColor = Color.fromARGB(128, 0, 0, 0);
          } else if (value == 1) {
            orderIconColor = Color(0xffD35400);
            homeIconColor = profileIconColor = Color.fromARGB(128, 0, 0, 0);
          } else {
            profileIconColor = Color(0xffD35400);
            homeIconColor = orderIconColor = Color.fromARGB(128, 0, 0, 0);
          }
          setState(() {});
        },
      ),
      body: screen[index],
    );
  }
}
