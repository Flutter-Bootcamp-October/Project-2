import 'package:flutter/material.dart';
import 'package:project2/Baderlib/facebook.dart';
import 'package:project2/Baderlib/log_in_button.dart';
import 'package:project2/Baderlib/style_text.dart';
import 'package:project2/Baderlib/text_field.dart';
import 'package:project2/screens/home.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: ContrastText(
              text: 'Sign up',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                label: 'Username',
                isPassword: false,
                iconData: Icons.man_3_outlined),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                label: 'Password', isPassword: true, iconData: Icons.password),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                label: 'Re-enter Password',
                iconData: Icons.password,
                isPassword: true), // Add Re-enter Password field
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LogInButton(
                backgroundColor: const Color.fromARGB(255, 211, 84, 0),
                buttonText: 'Sign In',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }),
          ),
          const SizedBox(height: 130),
          const facebook(),
        ],
      ),
    );
  }
}
