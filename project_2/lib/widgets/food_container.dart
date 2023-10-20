import 'package:flutter/material.dart';

class FoodContainr extends StatelessWidget {
  const FoodContainr({
    super.key,
    required this.name,
    required this.color,
    required this.image,
  });
  final Color color;
  final String name;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: color),
          ),
          Positioned(
            top: 10,
            left: 15,
            child: Text(
              name,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          Positioned(
            top: 30,
            left: 15,
            height: 120,
            width: 120,
            child: image,
          )
        ],
      ),
    );
  }
}
