import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFoodMenu extends StatefulWidget {
  const CustomTextFoodMenu({super.key});

  @override
  State<CustomTextFoodMenu> createState() => _CustomTextFoodMenuState();
}

class _CustomTextFoodMenuState extends State<CustomTextFoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Food Menu",
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
