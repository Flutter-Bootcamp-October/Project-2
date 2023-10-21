import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_near_me/custom_container_pic.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_near_me/custom_text_restaurant_info.dart';

class CustomNearMe extends StatefulWidget {
  const CustomNearMe({super.key});

  @override
  State<CustomNearMe> createState() => _CustomNearMeState();
}

class _CustomNearMeState extends State<CustomNearMe> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainerPic(),
            CustomTextRestaurantInfo(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CustomContainerPic(),
            CustomTextRestaurantInfo(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CustomContainerPic(),
            CustomTextRestaurantInfo(),
          ],
        ),
      ],
    );
  }
}
