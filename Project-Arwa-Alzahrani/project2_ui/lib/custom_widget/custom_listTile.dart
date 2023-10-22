import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.textListTile});
  final String textListTile;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(textListTile,
          style:
              const TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 14)),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
    );
  }
}
