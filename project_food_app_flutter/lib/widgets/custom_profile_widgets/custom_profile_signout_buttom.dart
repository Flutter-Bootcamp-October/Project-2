import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_food_app_flutter/extensions/get_color.dart';
import 'package:project_food_app_flutter/screens/logo.dart';

class CustomProfileSignOutButtom extends StatefulWidget {
  const CustomProfileSignOutButtom({super.key});

  @override
  State<CustomProfileSignOutButtom> createState() =>
      _CustomProfileSignOutButtomState();
}

class _CustomProfileSignOutButtomState
    extends State<CustomProfileSignOutButtom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return 0;
            }
            return 0;
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
        animationDuration: const Duration(microseconds: 100),
        foregroundColor: getColor(Colors.black, Colors.white),
        backgroundColor: getColor(
          const Color(0xffedf0f1),
          const Color(0xffc45c23),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LogoScreen();
            },
          ),
        );
      },
      child: Container(
        height: 55,
        width: 350,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            "Sign Out",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
