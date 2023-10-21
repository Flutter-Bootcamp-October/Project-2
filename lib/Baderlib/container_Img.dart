import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final Widget image;
  final Color containerColor; // Customizable color

  ImageContainer(
      {required this.image, this.containerColor = const Color(0xFFECECF1)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: containerColor,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            right: -30,
            bottom: -20,
            child: image,
          ),
        ],
      ),
    );
  }
}
