import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProfilePhoneNumber extends StatefulWidget {
  const CustomProfilePhoneNumber({super.key});

  @override
  State<CustomProfilePhoneNumber> createState() =>
      _CustomProfilePhoneNumberState();
}

class _CustomProfilePhoneNumberState extends State<CustomProfilePhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Text("+1 11229382748",
        style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xff000000)));
  }
}
