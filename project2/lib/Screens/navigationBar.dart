import 'package:flutter/material.dart';
import 'package:project2/styles/custom_icons_icons.dart';
import 'package:project2/styles/custom_colors.dart';

import 'account_screen.dart';
import 'home_screen.dart';
import 'order_screen.dart';

class NavigationBar1 extends StatefulWidget {
  const NavigationBar1({super.key});

  @override
  State<NavigationBar1> createState() => _NavigationBar1State();
}

class _NavigationBar1State extends State<NavigationBar1> {
  PageController? controller = PageController();
  List<Widget> listScreens = [
    HomeScreen(),
    const OrderScreen(),
    const AccountScreen(),
  ];
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: orang,
          currentIndex: indexSelected,
          onTap: (screenIndex) {
            indexSelected = screenIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.store_1), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.shopping_list_1), label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.user_1), label: "Profile"),
          ]),
      body: listScreens[indexSelected],
    );
  }
}
