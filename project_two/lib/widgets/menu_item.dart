import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key,
      required this.imagePath,
      required this.itemColor,
      required this.itemName});
  final String imagePath;
  final Color itemColor;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: itemColor),
          width: 130,
          height: 130,
          child: Stack(
            children: [
              Positioned(
                left: 13,
                top: 15,
                child: Text(
                  itemName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Positioned(left: 20, top: 27, child: Image.asset(imagePath))
            ],
          )),
    );
  }
}
