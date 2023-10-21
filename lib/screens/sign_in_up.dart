import 'package:flutter/material.dart';
import 'package:project2/Baderlib/facebook.dart';
import 'package:project2/Baderlib/log_in_button.dart';
import 'package:project2/screens/sign_In.dart';
import 'package:project2/screens/sign_up.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 211, 84, 0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/hamburger.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LogInButton(
                backgroundColor: const Color.fromARGB(255, 211, 84, 0),
                buttonText: 'Sign In',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signin()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: LogInButton(
                backgroundColor: const Color.fromARGB(255, 236, 240, 241),
                buttonText: 'Sign Up',
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
              ),
            ),
            const SizedBox(height: 130),
            const facebook(),
          ],
        ),
      ),
    );
  }
}
