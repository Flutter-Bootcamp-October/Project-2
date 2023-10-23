import 'package:flutter/material.dart';
import 'package:project2/textStyle/textStyle.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    required this.textEntry,
  });
  final String textEntry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(width: 0, style: BorderStyle.none)),
            filled: true,
            label: Text(textEntry, style: style2()),
            fillColor: const Color(0xffECF0F1),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
