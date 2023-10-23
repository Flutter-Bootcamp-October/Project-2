import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_appbar.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_review_food.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order_send_buttom.dart';

class CustomOrderScreen extends StatefulWidget {
  const CustomOrderScreen({super.key});

  @override
  State<CustomOrderScreen> createState() => _CustomOrderScreenState();
}

class _CustomOrderScreenState extends State<CustomOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomOrderAppBar(),
        CustomReviewFood(),
        Padding(
          padding: EdgeInsets.only(top: 90),
          child: CustomSendButtom(),
        )
      ],
    );
  }
}
