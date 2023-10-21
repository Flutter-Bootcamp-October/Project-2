import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  final Color backgroundColor;
  final String buttonText;
  final VoidCallback? onPressed;
  final Color textColor;

  const LogInButton({
    Key? key,
    required this.backgroundColor,
    required this.buttonText,
    required this.textColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        // Use ElevatedButton for a more visible background
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Set the background color here
          padding: const EdgeInsets.symmetric(horizontal: 80),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
