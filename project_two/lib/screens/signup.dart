import 'package:flutter/material.dart';
import 'package:project_two/screens/navgation_bar.dart';
import 'package:project_two/screens/starter.dart';
import 'package:project_two/widgets/my_button.dart';
import 'package:project_two/widgets/my_textfield.dart';
import 'package:project_two/widgets/scaffold_bottom.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StarterScreen()),
                      ModalRoute.withName("/Starter"));
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded))),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 110,
              ),
              const Align(
                widthFactor: 3.8,
                heightFactor: 2,
                alignment: Alignment.centerLeft,
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w700)),
              ),
              const MyTextField(
                hint: '   Enter Username',
                hideInput: false,
              ),
              const MyTextField(
                hint: '   Enter Password',
                hideInput: true,
              ),
              const MyTextField(
                hint: '   Re-enter Password',
                hideInput: true,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Navigation()),
                      ModalRoute.withName("/Starter"));
                },
                child: const MyButton(
                    buttonTitle: "sign in",
                    buttonColor: Color(0xFFD35400),
                    textColor: Colors.white),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Align(
                      alignment: Alignment(0.9, 1.0),
                      child: Text("Forgot password?"))),
              const SizedBox(height: 110),
              const ScaffoldBottom()
            ],
          ),
        ));
  }
}
