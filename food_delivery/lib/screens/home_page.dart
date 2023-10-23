import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/category.dart';
import 'package:food_delivery/widgets/menu_widget.dart';
import 'package:food_delivery/widgets/near_restaurant.dart';
import 'package:food_delivery/widgets/section_title.dart';
import 'package:food_delivery/widgets/text_fild_2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              const Textfild2(hint: 'Search'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '9 West 46 Th Street, New York City',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    children: [
                      Category(
                        imagelink: 'lib\\assets\\coffee-cup 1.png',
                        categoryname: 'Drink',
                      ),
                      Category(
                        imagelink: 'lib\\assets\\burger (1) 1.png',
                        categoryname: 'Food',
                      ),
                      Category(
                        imagelink: 'lib\\assets\\piece-of-cake 1.png',
                        categoryname: 'Cake',
                      ),
                      Category(
                        imagelink: 'lib\\assets\\potato-chips 1.png',
                        categoryname: 'Snack',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Sectiontitle(Text1: 'Food Menu', Text2: 'View All'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    children: [
                      Menuwidget(
                        name: 'Burgers',
                        imagelink: 'lib\\assets\\image1.png',
                        Backgraondcolor: true,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Menuwidget(
                        name: 'Pizza',
                        imagelink: 'lib\\assets\\image2.png',
                        Backgraondcolor: false,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Menuwidget(
                        name: 'BBQ',
                        imagelink: 'lib\\assets\\image3.png',
                        Backgraondcolor: true,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Sectiontitle(Text1: 'Near Me', Text2: 'View All'),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Nearrestaurant(
                        imagelink: "lib\\assets\\Rectangle 6 (1).png",
                      ),
                      Nearrestaurant(
                        imagelink: "lib\\assets\\Rectangle 6 (1).png",
                      ),
                      Nearrestaurant(
                        imagelink: "lib\\assets\\Rectangle 6 (1).png",
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    )));
  }
}
