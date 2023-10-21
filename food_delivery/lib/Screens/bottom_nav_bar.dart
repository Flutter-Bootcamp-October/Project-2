import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/Profile.dart';
import 'package:food_delivery/Screens/home.dart';
import 'package:food_delivery/Screens/order.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  List<Widget> screens = [const Home(), const Order(), const Profile()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: appOrange,
        elevation: 0,
      ),
      body: screens[selectedIndex],
    );
  }
}
