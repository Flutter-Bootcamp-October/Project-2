import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: const [
              CustomHomeScreen()]),
        ),
      ),
    );
  }
}
