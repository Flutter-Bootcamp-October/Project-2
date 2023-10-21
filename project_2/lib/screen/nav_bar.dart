import 'package:flutter/material.dart';
import 'package:project_2/screen/home.dart';
import 'package:project_2/screen/profile.dart';
import 'package:project_2/screen/order.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int select = 0;
  List<Widget> screens = [const Home(), const Order(), const Profile()];
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
                  icon: ImageIcon(AssetImage("assets\\store 1.png")),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets\\Group.png")),
                  label: 'Order'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_sharp), label: 'Profile')
            ]),
        body: screens[select]);
  }
}
