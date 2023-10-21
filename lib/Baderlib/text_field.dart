import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final IconData? iconData; // Icon to display on the left

  CustomTextField({
    Key? key,
    required this.label,
    this.isPassword = false,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            labelText: label,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            prefixIcon: iconData != null
                ? Icon(iconData) // Display the icon on the left
                : null, // If no icon provided, set to null
          ),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
