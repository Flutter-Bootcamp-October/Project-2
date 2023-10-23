import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_food_app_flutter/screens/nav_bar.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/custom_connect_with.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/custom_sign_in_up_appbar.dart';

class CustomSignIn extends StatefulWidget {
  const CustomSignIn({
    super.key,
  });

  @override
  State<CustomSignIn> createState() => _CustomSignUpState();
}

class _CustomSignUpState extends State<CustomSignIn> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  

  late final String userName;
  late final String passWord;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSignInUpAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                   controller: username,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffedf0f1),
                    hintText: "     Username",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xffedf0f1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xffedf0f1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffedf0f1),
                    hintText: "     Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xffedf0f1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xffedf0f1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const NavBar();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                        color: const Color(0xffc45c23),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                            color: const Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200, top: 10),
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(180, 52, 73, 94),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        
        const CustomConnectWith()
      ],
    );
  }
}
