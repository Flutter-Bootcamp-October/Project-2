import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EvaluationButtons extends StatefulWidget {
  const EvaluationButtons({super.key});
  @override
  State<EvaluationButtons> createState() => _EvaluationButtonsState();
}

class _EvaluationButtonsState extends State<EvaluationButtons> {
  Color currColor = const Color(0xFFECF0F1);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      GestureDetector(
        onTap: () {
          currColor = const Color(0xFFD35400);
          setState(() {});
        },
        child: ClipOval(
            child: Container(
          color: currColor,
          width: 18,
          height: 18,
          child: const Icon(size: 12, Icons.thumb_up_alt_outlined),
        )),
      ),
      GestureDetector(
        onTap: () {
          currColor = const Color(0xFFD35400);
          setState(() {});
        },
        child: ClipOval(
            child: Container(
          color: currColor,
          width: 18,
          height: 18,
          child: const Icon(size: 12, Icons.thumb_down_alt_outlined),
        )),
      )
    ]);
  }
}
