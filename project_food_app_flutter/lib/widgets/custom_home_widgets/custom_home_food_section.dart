import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOrderSection extends StatefulWidget {
  const CustomOrderSection({super.key});

  @override
  State<CustomOrderSection> createState() => _CustomOrderSectionState();
}

class _CustomOrderSectionState extends State<CustomOrderSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffECF0F1)),
                height: 70,
                width: 70,
                child: Image.asset("assets/coffee.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Drink",
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 182, 84, 31)),
                height: 70,
                width: 70,
                child: Image.asset("assets/burger.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Food",
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffECF0F1)),
                height: 70,
                width: 70,
                child: Image.asset("assets/piece-of-cake.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Cake",
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffECF0F1)),
                height: 70,
                width: 70,
                child: Image.asset("assets/potato-chips.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Snack",
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
