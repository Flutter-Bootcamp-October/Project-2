import 'package:flutter/material.dart';

class AccountList extends StatelessWidget {
  const AccountList({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: const TextStyle(
                fontFamily: "poppins", fontSize: 16, color: Colors.black),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 16,
        ),
      ],
    );
  }
}
