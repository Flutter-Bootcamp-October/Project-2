import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/customicons.dart';
import 'package:project_food_app_flutter/screens/profile.dart';
import 'package:project_food_app_flutter/screens/home.dart';
import 'package:project_food_app_flutter/screens/order.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> listScreen = [
    const HomeScreen(),
    const OrderScreen(),
    const ProfileScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xffD35400),
          currentIndex: selectedIndex,
          onTap: (screenIndex) {
            selectedIndex = screenIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  MyFlutterApp.store_1,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.shopping_list),
              label: "Order",
            ),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.user), label: "Profile")
          ],
        ),
        body: listScreen[selectedIndex],
      ),
    );
  }
}
