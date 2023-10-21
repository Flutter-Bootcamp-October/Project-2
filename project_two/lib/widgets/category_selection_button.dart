import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';

// ignore: must_be_immutable
class CategoryButton extends StatefulWidget {
  const CategoryButton({super.key, required this.iconPath});
  final String iconPath;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  Color iconColor = Colors.black;
  Color buttonColor = const Color(0xFFECF0F1);
  Color iconColorSelected = Colors.white;
  Color buttonColorSelected = const Color(0xFFD35400);

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
              onPressed: () {
                if (buttonColor != buttonColorSelected) {
                  buttonColor = buttonColorSelected;
                  iconColor = iconColorSelected;
                } else {
                  iconColor = Colors.black;
                  buttonColor = const Color(0xFFECF0F1);
                }
                setState(() {});
              },
              child: ImageIcon(
                  size: 30, color: iconColor, AssetImage(widget.iconPath))),
        ),
      ),
    );
  }
}
