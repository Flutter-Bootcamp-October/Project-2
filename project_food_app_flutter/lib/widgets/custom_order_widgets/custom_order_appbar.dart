import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_food_app_flutter/screens/nav_bar.dart';

class CustomOrderAppBar extends StatefulWidget {
  const CustomOrderAppBar({super.key});

  @override
  State<CustomOrderAppBar> createState() => _CustomOrderAppBarState();
}

class _CustomOrderAppBarState extends State<CustomOrderAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      backgroundColor: const Color(0x0fffffff),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NavBar();
          }));
        },
        icon: const Icon(Icons.keyboard_arrow_left_rounded),
        iconSize: 30,
        color: const Color(0xff000000),
      ),
      title: Text(
        "Review Food",
        style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: const Color(0xff000000)),
      ),
      centerTitle: true,
    );
  }
}
