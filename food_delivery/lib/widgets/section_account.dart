import 'package:flutter/material.dart';

class Sectionaccount extends StatelessWidget {
  const Sectionaccount({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Icon(Icons.arrow_forward_ios_sharp, size: 12),
        ],
      ),
    );
  }
}
