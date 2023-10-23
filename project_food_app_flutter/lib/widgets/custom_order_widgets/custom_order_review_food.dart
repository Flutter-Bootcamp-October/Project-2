import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_home_widgets/custom_home_near_me/custom_container_pic.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_info_widgets/custom_like_colored.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_info_widgets/custom_like_uncolored.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_info_widgets/custom_text_order_review_food.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_info_widgets/custom_dislike_colored.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_info_widgets/custom_dislike_uncolored.dart';

class CustomReviewFood extends StatefulWidget {
  const CustomReviewFood({super.key});

  @override
  State<CustomReviewFood> createState() => _CustomReviewFoodState();
}

class _CustomReviewFoodState extends State<CustomReviewFood> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              CustomContainerPic(),
              CustomTextOrderReviewFood(),
              SizedBox(
                width: 20,
              ),
              CustomDislikeUnColored(),
              SizedBox(
                width: 5,
              ),
              CustomLikeColored()
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CustomContainerPic(),
              CustomTextOrderReviewFood(),
              SizedBox(
                width: 20,
              ),
              CustomDislikeColored(),
              SizedBox(
                width: 5,
              ),
              CustomLikeUnColored()
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CustomContainerPic(),
              CustomTextOrderReviewFood(),
              SizedBox(
                width: 20,
              ),
              CustomDislikeUnColored(),
              SizedBox(
                width: 5,
              ),
              CustomLikeUnColored()
            ],
          ),
        ],
      ),
    );
  }
}
