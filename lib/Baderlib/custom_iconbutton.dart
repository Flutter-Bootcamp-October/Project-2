import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData iconData;
  final String buttonText;
  final Function()? onPressed;

  CustomButton({
    required this.iconData,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(
                255, 236, 240, 241), // Set the background color here
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: onPressed,
          child: Column(
            children: [
              Icon(
                iconData,
                size: 32.0, // Adjust the icon size as needed
              ),
              const SizedBox(height: 13.0), // Space between the icon and text
            ],
          ),
        ),
        const SizedBox(height: 13.0), // Space between the button and text
        Text(
          buttonText, // Replace with your desired text
          style:
              const TextStyle(fontSize: 13.0), // Adjust the text size as needed
        ),
      ],
    );
  }
}
