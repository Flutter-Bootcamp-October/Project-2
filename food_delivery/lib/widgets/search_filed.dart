import 'package:flutter/material.dart';

class SearchFiled extends StatelessWidget {
  const SearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16.0),
        hintText: "Search",
        hintStyle: const TextStyle(color: Color(0xff8a8c8d)),
        filled: true,
        fillColor: const Color(0xffECF0F1),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(30),
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Color(0xff8a8c8d),
        ),
      ),
    );
  }
}
