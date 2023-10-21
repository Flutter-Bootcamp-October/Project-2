import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/category.dart';
import 'package:food_delivery/widgets/header.dart';
import 'package:food_delivery/widgets/menu.dart';
import 'package:food_delivery/widgets/nearMe_menu.dart';
import 'package:food_delivery/widgets/search_filed.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SearchFiled(),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    Text("9 West 46 Th Street, New York City"),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Category(
                      backgroundColor: Color(0xffECF0F1),
                      title: "Drink",
                      image: "assets/Images/coffeecup.png",
                    ),
                    Category(
                      backgroundColor: Color(0xffD35400),
                      title: "Food",
                      image: "assets/Images/burger.png",
                    ),
                    Category(
                      backgroundColor: Color(0xffECF0F1),
                      title: "Cake",
                      image: "assets/Images/piece-of-cake .png",
                    ),
                    Category(
                      backgroundColor: Color(0xffECF0F1),
                      title: "Snak",
                      image: "assets/Images/potato-chips .png",
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Header(
                      title: "Food Menu",
                      fontsize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Menu(
                      title: "Burgers",
                      top: 20,
                      left: 20,
                      imageName: "assets/Images/menuburger.png",
                      color: Color(0xffc1e0f4),
                    ),
                    Menu(
                      title: "Pizaa",
                      top: 20,
                      left: 20,
                      imageName: "assets/Images/pizaa.png",
                      color: Color(0xffe1cce9),
                    ),
                    Menu(
                      title: "BQQ",
                      top: 0,
                      left: 32,
                      imageName: "assets/Images/bbq.png",
                      color: Color(0xffc1e0f4),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Header(
                      title: "Near Me",
                      fontsize: 16,
                      color: Color(0xff000000),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff34495E),
                      ),
                    ),
                  ],
                ),
              ),
              NearMeMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
