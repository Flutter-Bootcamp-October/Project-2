import 'package:flutter/material.dart';
import 'package:food_delivery/screens/account.dart';
import 'package:food_delivery/screens/home_page.dart';
import 'package:food_delivery/screens/order.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  Color? colorimage = Colors.grey[500];
  int selected = 0;
  List<Widget> Interfaces = [const Homepage(), const Order(), const Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Interfaces[selected],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffD35400),
        unselectedItemColor: Colors.grey[500],
        currentIndex: selected,
        onTap: (index) {
          _changetap(index);
          _change();
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('lib\\assets\\store 1 (1).png')),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
              'lib\\assets\\shopping-list 1.png',
            )),
            label: "Order",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'lib\\assets\\user 1.png',
                ),
              ),
              label: "Profile")
        ],
      ),
    );
  }

  _change() {
    if (colorimage == Colors.grey[500]) {
      colorimage = const Color(0xffD35400);
    } else {
      colorimage = Colors.grey[500];
    }
  }

  _changetap(int index) {
    setState(() {
      selected = index;
    });
  }
}
