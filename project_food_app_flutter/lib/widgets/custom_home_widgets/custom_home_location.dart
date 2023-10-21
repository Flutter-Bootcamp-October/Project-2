import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLocation extends StatefulWidget {
  const CustomLocation({super.key});

  @override
  State<CustomLocation> createState() => _CustomLocationState();
}

class _CustomLocationState extends State<CustomLocation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const Icon(
            Icons.location_on,
            size: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "9 West 46 Th Street, New York City",
            style:
                GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
