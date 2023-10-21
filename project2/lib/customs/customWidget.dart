// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContainerWidgetsButton extends StatelessWidget {
  const ContainerWidgetsButton(
      {super.key,
      required this.backgroundColor,
      required this.textEntry,
      required this.textColor,
      required this.pageName});
  final dynamic backgroundColor;
  final String textEntry;
  final dynamic textColor;
  final Widget pageName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => pageName)),
        child: Container(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 12,
          ),
          decoration: BoxDecoration(
              color: Color(backgroundColor),
              borderRadius: BorderRadius.circular(30)),
          height: 50,
          width: 354,
          child: Text(
            "$textEntry",
            style: TextStyle(
                color: Color(textColor),
                fontSize: 18,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
