import 'package:flutter/material.dart';

class Sectiontitle extends StatelessWidget {
  const Sectiontitle({super.key, required this.Text1, required this.Text2});
  final String Text1;
  final String Text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            Text1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            Text2,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
          )
        ],
      ),
    );
  }
}
