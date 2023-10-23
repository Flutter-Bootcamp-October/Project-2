import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProfileInfo extends StatefulWidget {
  const CustomProfileInfo({super.key});

  @override
  State<CustomProfileInfo> createState() => _CustomProfileInfoState();
}

class _CustomProfileInfoState extends State<CustomProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Profile",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Change Password",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payment Settings",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Voucher",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Notification",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "About Us",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Contact Us",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff000000)),
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
      ],
    );
  }
}
