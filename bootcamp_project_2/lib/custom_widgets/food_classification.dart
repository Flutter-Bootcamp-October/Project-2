import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodClassification extends StatelessWidget {
  FoodClassification(
      {super.key,
      required this.title,
      required this.backGroundColor,
      required this.src,
      required this.bottom,
      required this.right});
  String title;
  Color backGroundColor;
  String src;
  double bottom;
  double right;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            color: backGroundColor,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 12,
                top: 12,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Positioned(
                bottom: bottom,
                right: right,
                child: Image.asset(
                  src,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
