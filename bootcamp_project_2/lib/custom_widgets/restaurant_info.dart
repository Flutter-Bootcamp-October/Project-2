import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RestaurantInfo extends StatelessWidget {
  RestaurantInfo({super.key, required this.text, required this.src});
  String text;
  String src;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Image.asset(src),
          Text('  $text'),
        ],
      ),
    );
  }
}
