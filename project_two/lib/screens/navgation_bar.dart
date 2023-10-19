import 'package:flutter/material.dart';
import 'package:project_two/screens/account.dart';
import 'package:project_two/screens/home.dart';
import 'package:project_two/screens/order.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selected = 0;
  List<Widget> list = [
    const HomeScreen(),
    const OrderScreen(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[selected],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          onTap: (index) {
            selected = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('project_two/lib/assets/icons/store.png'),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                    'project_two/lib/assets/icons/shopping_list .png'),
                label: "Order"),
            BottomNavigationBarItem(
                icon: Image.asset('project_two/lib/assets/icons/person.png'),
                label: "Profile")
          ]),
    );
  }
}
