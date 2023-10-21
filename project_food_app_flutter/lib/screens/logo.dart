import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_sign_in_up_widgets/logo_screen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(children: const [CustomLogoScreen()]),
      ),
    );
  }
}
