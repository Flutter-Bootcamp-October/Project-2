import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonIn extends StatelessWidget {
  const ButtonIn({
    super.key,
    required this.nameText, required this.color,
  });
  final String nameText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: color,
            elevation: 7,
            fixedSize: Size(MediaQuery.of(context).size.width - 32, 50)),
        onPressed: () {},
        child: Text(nameText));
  }
}
