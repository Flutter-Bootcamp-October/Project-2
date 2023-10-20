import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});
  final fillColor = const Color(0xFFECF0F1);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: context.getHeightSizing(number: 0.05),
            right: context.getWidithSizing(number: 0.05),
            left: context.getWidithSizing(number: 0.05)),
        child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: fillColor)),
                hintText: "Search",
                prefixIcon: const Icon(Icons.search))));
  }
}
