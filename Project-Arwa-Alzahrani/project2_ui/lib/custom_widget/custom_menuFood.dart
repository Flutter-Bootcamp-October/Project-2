import 'package:flutter/material.dart';

class CustomMenuFood extends StatelessWidget {
  const CustomMenuFood(
      {super.key,
      required this.foodTitle,
      required this.foodImage,
      this.containerColor = const Color.fromRGBO(52, 152, 219, 0.3),
      required this.positionRight,
      required this.positionBottom,
      required this.heightImage,
      required this.widthImage});
  final String foodTitle;
  final String foodImage;
  final Color containerColor;
  final double positionRight;
  final double positionBottom;
  final double heightImage;
  final double widthImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        height: 110,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: containerColor,
        ),
        child: Stack(
          children: [
            Positioned(
                left: 15,
                top: 10,
                child: Text(
                  foodTitle,
                  style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )),
            Positioned(
                right: positionRight,
                bottom: positionBottom,
                child: Image.asset(
                  foodImage,
                  height: heightImage,
                  width: widthImage,
                ))
          ],
        ));
  }
}
