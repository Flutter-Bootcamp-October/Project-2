import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuCategory extends StatelessWidget {
  MenuCategory(
      {super.key,
      this.color = const Color.fromRGBO(236, 240, 241, 1),
      required this.image,
      required this.titl});
  Color color;
  final String titl;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color,
            ),
            height: 90,
            width: 90,
            child: image,
          ),
        ),
        Text(titl)
      ],
    );
  }
}
