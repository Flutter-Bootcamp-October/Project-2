import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_food_app_flutter/extensions/get_color.dart';
import 'package:project_food_app_flutter/screens/sign_in.dart';
import 'package:project_food_app_flutter/screens/sign_up.dart';

class CustomChooseSignInUp extends StatefulWidget {
  const CustomChooseSignInUp({super.key, required this.name});
  final String name;

  @override
  State<CustomChooseSignInUp> createState() => _CustomChooseSignInUpState();
}

class _CustomChooseSignInUpState extends State<CustomChooseSignInUp> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // I have search how can i make the shadow elvation 0 in ButtonStyle
      // Also, how can make border radius in ButtonStyle circular(30)
      // Also, I use method getColor that return MaterialStateProperty
      // while the user pressed the sign in or sign up buttons the color will changed
      // the method is in the extensions folder => get_color.dart file

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
        if (widget.name == "Sign In") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const SignInScreen();
              },
            ),
          );
        } else if (widget.name == "Sign Up") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const SignUpScreen();
              },
            ),
          );
        }
      },
      child: Container(
        height: 55,
        width: 350,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            widget.name,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
