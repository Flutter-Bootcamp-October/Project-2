import 'package:flutter/material.dart';
import 'package:project_2/screen/order.dart';
import 'package:project_2/screen/profile.dart';
import 'package:project_2/screen/review.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int select = 0;
  List<Widget> screens = [const Profile(), const Order(), const Review()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: select,
            onTap: (value) {
              select = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_sharp), label: 'Profile'),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Order'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'reviw')
            ]),
        body: screens[select]);
  }
}
