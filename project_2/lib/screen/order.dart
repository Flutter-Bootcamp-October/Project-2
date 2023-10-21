import 'package:flutter/material.dart';
import 'package:project_2/methods/ap_bar.dart';
import 'package:project_2/widgets/button_in.dart';
import 'package:project_2/widgets/food_review.dart';
import 'package:project_2/screen/nav_bar.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: apbar(title: 'Review Food'),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (buildContext, int index) {
                  return const FoodReview();
                }),
          ),

          //calling ButtonIn widget and
          ButtonIn(
            nameText: "Send",
            color: const Color.fromRGBO(211, 84, 0, 1),
            screen: const NavBar(),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
