import 'package:flutter/material.dart';
import 'package:food_delivery/screens/account.dart';
import 'package:food_delivery/screens/home.dart';
import 'package:food_delivery/screens/order.dart';
import 'package:food_delivery/screens/signIn.dart';
import 'package:food_delivery/screens/signIn_sigUp.dart';
import 'package:food_delivery/screens/signUp.dart';
import 'package:food_delivery/screens/navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
