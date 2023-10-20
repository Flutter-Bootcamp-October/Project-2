import 'package:flutter/material.dart';
import 'package:project_two/screens/navgation_bar.dart';
import 'package:project_two/screens/starter.dart';
import 'package:project_two/widgets/my_button.dart';
import 'package:project_two/widgets/my_textfield.dart';

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StarterScreen()),
                  );
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded))),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 262,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Sign Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Navigation()),
                  );
                },
                child: const MyButton(
                    buttonTitle: "sign in",
                    buttonColor: Color(0xFFD35400),
                    textColor: Colors.white),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Align(
                      alignment: Alignment.bottomRight,
                      child: Text("Forgot password?"))),
              // const ScaffoldBottom()
            ],
          ),
        ));
  }
}
