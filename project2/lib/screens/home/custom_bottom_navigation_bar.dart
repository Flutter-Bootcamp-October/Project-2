import 'package:flutter/material.dart';
import 'package:project2/screens/home/home_screen.dart';
import 'package:project2/screens/home/order_screen.dart';
import 'package:project2/screens/home/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

List<Widget> screens = const [
  HomeScreen(),
  OrderScreen(),
  ProfileScreen(),
];
int selectedIndex = 0;

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedIconTheme: const IconThemeData(color: Color(0xFFD25400)),
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg_icons/store 1.svg",
                colorFilter: (selectedIndex == 0)
                    ? const ColorFilter.mode(Color(0xFFD25400), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color(0xFF747275), BlendMode.srcIn),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg_icons/shopping-list 1.svg",
                colorFilter: (selectedIndex == 1)
                    ? const ColorFilter.mode(Color(0xFFD25400), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color(0xFF747275), BlendMode.srcIn),
              ),
              label: "Order"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg_icons/user 1.svg",
                colorFilter: (selectedIndex == 2)
                    ? const ColorFilter.mode(Color(0xFFD15400), BlendMode.srcIn)
                    : const ColorFilter.mode(
                        Color(0xFF747275), BlendMode.srcIn),
              ),
              label: "Profile"),
        ],
        currentIndex: selectedIndex,
      ),
    );
  }
}
