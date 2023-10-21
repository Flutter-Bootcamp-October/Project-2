import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFoodMenu extends StatefulWidget {
  const CustomFoodMenu({super.key});

  @override
  State<CustomFoodMenu> createState() => _CustomFoodMenuState();
}

class _CustomFoodMenuState extends State<CustomFoodMenu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffc9e0f3),
            ),
            height: 130,
            width: 130,
            child: Stack(
              children: [
                Image.asset("assets/image1.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "Burgers",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffffffff)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffdecfe8),
            ),
            height: 130,
            width: 130,
            child: Stack(
              children: [
                Image.asset(
                  "assets/image2.png",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "Pizza",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffffffff)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffc9e0f3),
            ),
            height: 130,
            width: 130,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 46),
                  child: Image.asset("assets/image3.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "BBQ",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffffffff)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
