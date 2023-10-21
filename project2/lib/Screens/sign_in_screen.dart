import 'package:flutter/material.dart';
import 'package:project2/styles/custom_colors.dart';

import 'home_screen.dart';
import 'navigationBar.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final ButtonStyle buttonSingUp = ElevatedButton.styleFrom(
    minimumSize: Size(354, 50),
    backgroundColor: orang,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30))),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: const Icon(Icons.arrow_back_ios),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    width: 354,
                    height: 50,
                    decoration: BoxDecoration(
                      color: gray,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        hintText: 'Username',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 354,
                    height: 50,
                    decoration: BoxDecoration(
                      color: gray,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        hintText: 'Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: ElevatedButton(
                      style: buttonSingUp,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigationBar1()),
                        );
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Forgot Password?")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/Vector 1.png",
                        width: 264,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Or connect with"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset("assets/images/facebook 1.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset("assets/images/google-plus 1.png"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
