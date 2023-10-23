import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextOrderReviewFood extends StatefulWidget {
  const CustomTextOrderReviewFood({super.key});

  @override
  State<CustomTextOrderReviewFood> createState() =>
      _CustomTextOrderReviewFoodState();
}

class _CustomTextOrderReviewFoodState extends State<CustomTextOrderReviewFood> {
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
              "Dogmie jagong tutung",
              style: GoogleFonts.poppins(
                  fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            children: [
              Image.asset("assets/like.png"),
              const Text(" 999+ |  "),
              Image.asset("assets/unlike.png"),
              const Text(" 93+"),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 7, top: 7),
              child: Text(
                "\$ 99.99",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff2ECC71)),
              ))
        ],
      ),
    );
  }
}
