import 'package:flutter/material.dart';

class FiledMenu extends StatelessWidget {
  const FiledMenu({super.key, required this.hintext});
  final String hintext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            fillColor: const Color.fromRGBO(236, 240, 241, 1),
            filled: true,
            hintText: hintext,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(236, 240, 241, 1))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(236, 240, 241, 1)))),
      ),
    );
  }
}
