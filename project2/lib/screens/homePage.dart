import 'package:flutter/material.dart';
import 'package:project2/customs/categoryList.dart';
import 'package:project2/customs/foodMenuContainer.dart';
import 'package:project2/customs/resturanListCard.dart';
import 'package:project2/textStyle/textStyle.dart';

import '../customs/searchField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              searchField(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "9 West 46 Th Street, New York City",
                    style: style1(),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryList(
                        textEntry: "Drink",
                        backgroundColor: 0xffECF0F1,
                        image: "assets/coffeeIcon.png"),
                    CategoryList(
                        textEntry: "Food",
                        backgroundColor: 0xffD35400,
                        image: "assets/burgerIcon.png"),
                    CategoryList(
                        textEntry: "cake",
                        backgroundColor: 0xffECF0F1,
                        image: "assets/cakeIcon.png"),
                    CategoryList(
                        textEntry: "Snack",
                        backgroundColor: 0xffECF0F1,
                        image: "assets/potatoIcon.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Food Menu",
                    style: TitleStyle(),
                  ),
                  Text(
                    "View all",
                    style: style1(),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    foodContainer(
                        textEntry: "Burger",
                        backgroundColor: 0xffc2e0f4,
                        image: "assets/realBurger.png"),
                    foodContainer(
                        textEntry: "Pizza",
                        backgroundColor: 0xffe1cde9,
                        image: "assets/pizza.png"),
                    foodContainer(
                        textEntry: "BBQ",
                        backgroundColor: 0xffc1e0f3,
                        image: "assets/bbq.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near Me",
                    style: TitleStyle(),
                  ),
                  Text(
                    "View all",
                    style: style1(),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ResturanListCard(),
                        ResturanListCard(),
                        ResturanListCard(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
