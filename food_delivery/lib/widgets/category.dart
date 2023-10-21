import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.image});

  final String image;
  final Color backgroundColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, right: 24),
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset(image)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(title),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
