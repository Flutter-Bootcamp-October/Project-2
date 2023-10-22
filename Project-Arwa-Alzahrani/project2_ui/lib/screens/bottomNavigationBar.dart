import 'package:flutter/material.dart';
import 'package:project2_ui/screens/home.dart';
import 'package:project2_ui/screens/order.dart';
import 'package:project2_ui/screens/profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<Widget> listScreen = [
    const Home(),
    const Order(),
    const Profile(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromRGBO(211, 84, 0, 1),
          elevation: 0,
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home.png",
                  width: 20,
                  height: 20,
                  color: selectedIndex == 0
                      ? const Color.fromRGBO(211, 84, 0, 1)
                      : const Color.fromRGBO(0, 0, 0, 0.5),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/order.png",
                  width: 20,
                  height: 20,
                  color: selectedIndex == 1
                      ? const Color.fromRGBO(211, 84, 0, 1)
                      : const Color.fromRGBO(0, 0, 0, 0.5),
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/profile.png",
                  width: 20,
                  height: 20,
                  color: selectedIndex == 2
                      ? const Color.fromRGBO(211, 84, 0, 1)
                      : const Color.fromRGBO(0, 0, 0, 0.5),
                ),
                label: 'Profile'),
          ]),
      body: listScreen[selectedIndex],
    );
  }
}
