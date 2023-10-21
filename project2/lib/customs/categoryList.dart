import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList(
      {super.key,
      required this.textEntry,
      required this.backgroundColor,
      required this.image});
  final String textEntry;
  final dynamic backgroundColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Color(backgroundColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              image,
              width: 30,
              height: 30,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            textEntry,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            width: 100,
          ),
        ],
      ),
    );
  }
}
