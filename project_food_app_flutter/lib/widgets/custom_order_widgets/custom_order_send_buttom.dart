import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSendButtom extends StatefulWidget {
  const CustomSendButtom({super.key});

  @override
  State<CustomSendButtom> createState() => _CustomSendButtomState();
}

class _CustomSendButtomState extends State<CustomSendButtom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 55,
        width: 350,
        decoration: BoxDecoration(
            color: const Color(0xffc45c23),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            "Send",
            style: GoogleFonts.poppins(
                color: const Color(0xffFFFFFF),
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
