import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileOption extends StatelessWidget {
  ProfileOption({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.asset('lib/assets/icons/chevron-right.png'),
        ],
      ),
    );
  }
}
