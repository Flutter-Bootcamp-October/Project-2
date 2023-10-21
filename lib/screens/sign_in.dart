import 'package:flutter/material.dart';
import 'package:project2/Baderlib/facebook.dart';
import 'package:project2/Baderlib/log_in_button.dart';
import 'package:project2/Baderlib/style_text.dart';
import 'package:project2/Baderlib/text_field.dart';
import 'package:project2/screens/home.dart';
import 'package:project2/screens/sign_up.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

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
              text: 'Sign in',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              label: 'Username',
              isPassword: false,
              iconData: Icons.man_3_outlined,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                label: 'Password', isPassword: true, iconData: Icons.password),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LogInButton(
              backgroundColor: const Color.fromARGB(
                  255, 211, 84, 0), // Specify the background color
              buttonText: 'Sign In', // Specify the button text
              textColor: Colors.white, // Specify the text color
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ),
          LogInButton(
            backgroundColor: const Color.fromARGB(255, 236, 240, 241),
            buttonText: 'Sign Up',
            textColor: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
              // Implement sign-up navigation or logic here
            },
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 10, // Adjust the font size as needed
                  color: Colors.black, // You can specify the text color
                  // Add more style properties as needed
                ),
              ),
            ),
          ),
          const SizedBox(height: 130),
          const facebook(),
        ],
      ),
    );
  }
}
