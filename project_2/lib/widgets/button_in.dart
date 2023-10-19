// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ButtonIn extends StatelessWidget {
  ButtonIn(
      {super.key,
      required this.nameText,
      required this.color,
      this.colorText = Colors.white,
      this.screen});
  final String nameText;
  Color colorText;
  final Color color;
  var screen;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: color,
            elevation: 7,
            fixedSize: Size(MediaQuery.of(context).size.width - 60, 50)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return screen;
          }));
        },
        child: Text(
          nameText,
          style: TextStyle(color: colorText),
        ));
  }
}
