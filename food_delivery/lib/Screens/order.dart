import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/botton.dart';
import 'package:food_delivery/Widgets/review_food.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          "Review food",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(children: const [
                Column(
                  children: [
                    ReviewFood(
                        restaurantName: "Dogmie jagong tutung",
                        like: 100,
                        dislike: 15,
                        price: 19.99,
                        imagePath: "images\\Food.png"),
                    ReviewFood(
                        restaurantName: "Dogmie jagong tutung",
                        like: 77,
                        dislike: 11,
                        price: 55.99,
                        imagePath: "images\\Food.png"),
                    ReviewFood(
                        restaurantName: "Dogmie jagong tutung",
                        like: 90,
                        dislike: 3,
                        price: 99.99,
                        imagePath: "images\\Food.png"),
                  ],
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32, right: 20),
              child:
                  AppBotton(onPressed: () {}, text: "Send", color: appOrange),
            ),
          ],
        ),
      ),
    );
  }
}
