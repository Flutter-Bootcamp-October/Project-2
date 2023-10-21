import 'package:flutter/material.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.icon, required this.text});
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: appgrey),
          child: icon,
        ),
        Text(text)
      ],
    );
  }
}
