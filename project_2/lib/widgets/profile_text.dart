import 'package:flutter/material.dart';

class ProfileText extends StatelessWidget {
  const ProfileText({super.key, re, required this.laftText});
  final String laftText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(laftText,
              style:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
          const Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}
