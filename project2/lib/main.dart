import 'package:flutter/material.dart';

import 'package:project2/screens/homePage.dart';
import 'package:project2/screens/orderPage.dart';
import 'package:project2/screens/profilePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: buttomNavigationBar(),
    );
  }
}

class buttomNavigationBar extends StatefulWidget {
  const buttomNavigationBar({super.key});

  @override
  State<buttomNavigationBar> createState() => _buttomNavigationBarState();
}

class _buttomNavigationBarState extends State<buttomNavigationBar> {
  int Indexselected = 0;
  List<Widget> screens = [
    const HomePage(),
    const OrderPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[Indexselected],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xffD35400),
          currentIndex: Indexselected,
          onTap: (index) {
            Indexselected = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/home.png"),
                  size: 20,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/list.png"),
                  size: 20,
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/user.png"),
                  size: 20,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
