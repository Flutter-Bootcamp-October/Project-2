import 'package:flutter/material.dart';
import 'package:project_two/screens/navgation_bar.dart';
import 'package:project_two/screens/starter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Starter());
  }
}
