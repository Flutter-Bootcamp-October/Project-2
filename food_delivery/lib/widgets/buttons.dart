import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.title,
      required this.color,
      required this.backgroundColor,
      required this.onpressed});
  final String title;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 50,
        width: 354,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: color),
          ),
        ),
      ),
    );
  }
}
