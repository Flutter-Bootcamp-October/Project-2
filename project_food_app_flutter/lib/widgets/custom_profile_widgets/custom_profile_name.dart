import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProfileName extends StatefulWidget {
  const CustomProfileName({super.key});

  @override
  State<CustomProfileName> createState() => _CustomProfileNameState();
}

class _CustomProfileNameState extends State<CustomProfileName> {
  @override
  Widget build(BuildContext context) {
    return Text("Itoh",
        style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: const Color(0xff000000)));
  }
}
