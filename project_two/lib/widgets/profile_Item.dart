// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Poppines',
              fontWeight: FontWeight.w500,
              fontSize: 14)),
      trailing: const Icon(
          color: Colors.black, size: 16, Icons.arrow_forward_ios_rounded),
    );
  }
}
