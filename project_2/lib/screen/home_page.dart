import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset("assets\hamburger 1.png"),
        ElevatedButton(onPressed: () {}, child: Text("Sign In")),
        ElevatedButton(onPressed: () {}, child: Text("Sign Up"))
      ],
    ));
  }
}
