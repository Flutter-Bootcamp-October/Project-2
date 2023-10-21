import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        child: InkWell(
          child: Image.asset("assets/images/back.png"),
          onTap: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
