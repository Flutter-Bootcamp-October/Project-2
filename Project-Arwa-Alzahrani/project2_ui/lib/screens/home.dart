import 'package:flutter/material.dart';
import 'package:project2_ui/custom_widget/custom_foodNearMe.dart';
import 'package:project2_ui/custom_widget/custom_menuAllCategory.dart';
import 'package:project2_ui/custom_widget/custom_menuFood.dart';
import 'package:project2_ui/custom_widget/custom_viewAll.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const SizedBox(height: 80),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(236, 240, 241, 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      size: 20,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 14),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  size: 20,
                ),
                Text(
                  "9 West 46 Th Street, New York City",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomMenuCategory(
                    categoryName: 'Drink',
                    colorContainer: Color.fromRGBO(236, 240, 241, 1),
                    categoryImage: 'assets/images/coffee-cup.png',
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  CustomMenuCategory(
                    categoryName: 'Food',
                    colorContainer: Color.fromRGBO(211, 84, 0, 1),
                    categoryImage: 'assets/images/burgerWhite.png',
                    colorImage: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  CustomMenuCategory(
                    categoryName: 'Cake',
                    colorContainer: Color.fromRGBO(236, 240, 241, 1),
                    categoryImage: 'assets/images/piece-of-cake.png',
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  CustomMenuCategory(
                    categoryName: 'Snack',
                    colorContainer: Color.fromRGBO(236, 240, 241, 1),
                    categoryImage: 'assets/images/potato-chips.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomViewAll(
              text: 'Food Menu',
              textViewAll: 'View all',
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomMenuFood(
                    foodTitle: "Burgers",
                    foodImage: 'assets/images/burger.png',
                    positionRight: -8,
                    positionBottom: -16,
                    heightImage: 95,
                    widthImage: 95,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomMenuFood(
                    foodTitle: "Pizza",
                    foodImage: 'assets/images/pizza.png',
                    containerColor: Color.fromRGBO(155, 89, 182, 0.3),
                    positionRight: -23,
                    positionBottom: -22,
                    heightImage: 97,
                    widthImage: 110,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomMenuFood(
                    foodTitle: "BBQ",
                    foodImage: 'assets/images/bbq.png',
                    positionRight: -66,
                    positionBottom: -25,
                    heightImage: 98,
                    widthImage: 160,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomViewAll(text: "Near Me", textViewAll: "View all"),
            const SizedBox(
              height: 15,
            ),
            const CustomFoodNearMe(),
            const SizedBox(
              height: 15,
            ),
            const CustomFoodNearMe(),
          ]),
        ),
      ),
    );
  }
}
