import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu(
      {super.key,
      required this.color,
      required this.title,
      required this.top,
      required this.left,
      required this.imageName});

  final Color color;
  final String title;
  final double top;
  final double left;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: top,
                left: left,
                child: Image.asset(
                  imageName,
                  width: 100,
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
