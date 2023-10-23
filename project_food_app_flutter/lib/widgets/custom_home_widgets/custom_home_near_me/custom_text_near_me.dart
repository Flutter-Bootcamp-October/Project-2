import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextNearMe extends StatefulWidget {
  const CustomTextNearMe({super.key});

  @override
  State<CustomTextNearMe> createState() => _CustomTextNearMeState();
}

class _CustomTextNearMeState extends State<CustomTextNearMe> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Near Me",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Text(
          "View all",
          style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
