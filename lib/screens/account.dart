import 'package:flutter/material.dart';
import 'package:project2/screens/sign_in_up.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Column(
                children: [
                  const Expanded(
                    flex: 0,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          foregroundImage: AssetImage("assets/Korea.png"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Itoh",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "+1 11229382748",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInUp(),
                        ),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign In/Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // Place the BottomTabBar here
    );
  }
}
