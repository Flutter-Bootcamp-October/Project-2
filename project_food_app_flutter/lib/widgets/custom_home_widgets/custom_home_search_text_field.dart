import 'package:flutter/material.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          size: 35,
          weight: 2,
          color: Color(0xff7b7d7d),
        ),
        filled: true,
        fillColor: const Color(0xffedf0f1),
        hintText: "Search",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Color(0xffedf0f1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Color(0xffedf0f1),
          ),
        ),
      ),
    );
  }
}
