import 'package:flutter/material.dart';

class CustomSignInUpAppBar extends StatefulWidget {
  const CustomSignInUpAppBar({super.key});

  @override
  State<CustomSignInUpAppBar> createState() => _CustomSignInUpAppBarState();
}

class _CustomSignInUpAppBarState extends State<CustomSignInUpAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      backgroundColor: const Color(0x0fffffff),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.keyboard_arrow_left_rounded),
        iconSize: 30,
        color: const Color(0xff000000),
      ),
    );
  }
}
