import 'package:bootcamp_project_2/custom_widgets/back_icon.dart';
import 'package:bootcamp_project_2/custom_widgets/button.dart';
import 'package:bootcamp_project_2/custom_widgets/food_review.dart';
import 'package:bootcamp_project_2/custom_widgets/order_title.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_30_percent.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_40_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_60_pixels.dart';
import 'package:bootcamp_project_2/screens/navigationBarController.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBy60Pixels(),
            Row(
              children: [
                BackIcon(),
                OrderTitle(),
              ],
            ),
            SpaceBy40Pixels(),
            FoodReview(
              likeBackgroundColor: Color(0xffD35400),
              dislikeBackgrounColor: Color(0xffECF0F1),
              likeColor: Color(0xffFFFFFF),
              dislikeColor: Color(0xff34495E),
            ),
            FoodReview(
              likeBackgroundColor: Color(0xffECF0F1),
              dislikeBackgrounColor: Color(0xffD35400),
              likeColor: Color(0xff34495E),
              dislikeColor: Color(0xffFFFFFF),
            ),
            FoodReview(
              likeBackgroundColor: Color(0xffECF0F1),
              dislikeBackgrounColor: Color(0xffECF0F1),
              likeColor: Color(0xff34495E),
              dislikeColor: Color(0xff34495E),
            ),
            SpaceBy30Percent(),
            Button(
              backgroundColor: Color(0xffD35400),
              text: 'Send',
              fontColor: Colors.white,
              whereToPush: NavigationBarController(),
            ),
          ],
        ),
      ),
    );
  }
}
