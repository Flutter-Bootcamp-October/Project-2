import 'package:flutter/material.dart';

class CustomViewAll extends StatelessWidget {
  const CustomViewAll(
      {super.key, required this.text, required this.textViewAll});
  final String text;
  final String textViewAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            textViewAll,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
