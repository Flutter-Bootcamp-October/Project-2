import 'package:flutter/material.dart';
import 'package:project_2/methods/ap_bar.dart';
import 'package:project_2/screen/order.dart';
import 'package:project_2/screen/profile.dart';
import 'package:project_2/widgets/button_in.dart';
import 'package:project_2/widgets/food_menu.dart';
import 'package:project_2/widgets/nav_bar.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

int select = 0;
List<Widget> screens = [const Profile(), const Order(), const Review()];

class _ReviewState extends State<Review> {
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
                itemCount: 5,
                itemBuilder: (BuildContext, int index) {
                  return const FoodReview();
                }),
          ),
          const SizedBox(
            height: 100,
          ),
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
