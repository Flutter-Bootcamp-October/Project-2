import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_profile_widget/custom_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [CustomProfileScreen()],
          ),
        ),
      ),
    );
  }
}
