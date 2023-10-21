import 'package:flutter/material.dart';

class AppBotton extends StatelessWidget {
  const AppBotton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    this.textColor = Colors.white,
  });
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: SizedBox(
        height: 50,
        width: 334,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: textColor),
          ),
        ),
      ),
    );
  }
}
