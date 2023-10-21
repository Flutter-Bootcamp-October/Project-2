import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home.dart';
import 'package:food_delivery/screens/order.dart';
import 'package:food_delivery/screens/account.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation> {
  List<Widget> listScreen = [
    const Home(),
    const Order(),
    const Account(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffD35400),
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: "Profile"),
        ],
      ),
      body: listScreen[selectedIndex],
    );
  }
}
