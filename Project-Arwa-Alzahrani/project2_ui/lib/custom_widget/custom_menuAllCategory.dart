import 'package:flutter/material.dart';

class CustomMenuCategory extends StatelessWidget {
  const CustomMenuCategory(
      {super.key,
      required this.categoryName,
      required this.colorContainer,
      this.colorImage = const Color.fromRGBO(0, 0, 0, 1),
      required this.categoryImage});
  final String categoryName;
  final Color colorContainer;
  final Color colorImage;
  final String categoryImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: colorContainer),
          child: Image(
            image: AssetImage(categoryImage),
            color: colorImage,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          categoryName,
          style:
              const TextStyle(fontSize: 12, color: Color.fromRGBO(0, 0, 0, 1)),
        )
      ],
    );
  }
}
