import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_food_menu/custom_food_menu.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_location.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_near_me/custom_near_me.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_food_section.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_search_text_field.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_food_menu/custom_text_food_menu.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_near_me/custom_text_near_me.dart';

class CustomHomeScreen extends StatefulWidget {
  const CustomHomeScreen({super.key});

  @override
  State<CustomHomeScreen> createState() => _CustomHomeScreenState();
}

class _CustomHomeScreenState extends State<CustomHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 10,
          ),
          CustomLocation(),
          SizedBox(
            height: 30,
          ),
          CustomOrderSection(),
          SizedBox(
            height: 30,
          ),
          CustomTextFoodMenu(),
          SizedBox(
            height: 10,
          ),
          CustomFoodMenu(),
          SizedBox(
            height: 30,
          ),
          CustomTextNearMe(),
          SizedBox(
            height: 10,
          ),
          CustomNearMe(),
        ],
      ),
    );
  }
}
