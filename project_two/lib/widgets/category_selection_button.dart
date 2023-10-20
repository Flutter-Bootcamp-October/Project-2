import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton(
      {super.key,
      required this.iconColor,
      required this.buttonColor,
      required this.iconPath});
  final Color iconColor;
  final String iconPath;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.getWidithSizing(number: 0.05),
        left: context.getWidithSizing(number: 0.05),
        right: context.getWidithSizing(number: 0.05),
        bottom: context.getWidithSizing(number: 0.02),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          width: 70,
          height: 70,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => buttonColor)),
              onPressed: () {},
              child:
                  ImageIcon(size: 30, color: iconColor, AssetImage(iconPath))),
        ),
      ),
    );
  }
}
