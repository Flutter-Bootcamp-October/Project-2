import 'package:flutter/material.dart';
import 'package:flutter_project_1/screens/nav_bar.dart';
//import 'package:flutter_project_1/screens/first_screen.dart';
//import 'package:flutter_project_1/screens/home_screen.dart';
//import 'package:flutter_project_1/screens/seconed_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyBottomNavBar());
  }
}
