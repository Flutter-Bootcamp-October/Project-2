import 'package:flutter/material.dart';
import 'package:project2/textStyle/textStyle.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key, required this.textEntry});
  final String textEntry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                textEntry,
                style: style2(),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
