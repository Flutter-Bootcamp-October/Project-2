import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextRestaurantInfo extends StatefulWidget {
  const CustomTextRestaurantInfo({super.key});

  @override
  State<CustomTextRestaurantInfo> createState() =>
      _CustomTextRestaurantInfoState();
}

class _CustomTextRestaurantInfoState extends State<CustomTextRestaurantInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 10),
            child: Text(
              "Dapur Ijah Restaurant",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                size: 15,
                color: Color(0xff7b7d7d),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "13 th Street, 46 W 12th St, NY",
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              const Icon(
                Icons.access_time,
                size: 15,
                color: Color(0xff7b7d7d),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                " 3 min - 1.1 Km",
                style: GoogleFonts.roboto(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, top: 7),
            child: Image.asset("assets/star.png"),
          )
        ],
      ),
    );
  }
}
