import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/category.dart';
import 'package:food_delivery/Widgets/food_menu.dart';
import 'package:food_delivery/Widgets/near_me.dart';
import 'package:food_delivery/Widgets/text_field.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: AppTextField(
              text: "Search",
              icon: Icon(Icons.search),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Row(
              children: [
                Icon(Icons.location_on),
                Text("9 West 46 Th Street, New York City"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Category(
                    text: 'Drink',
                    icon: Icon(Icons.coffee_sharp),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Category(
                    text: 'Food',
                    icon: Icon(Icons.fastfood_sharp),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Category(
                    text: 'Cake',
                    icon: Icon(Icons.cake),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Category(
                    text: 'Snack',
                    icon: Icon(Icons.hdr_strong_outlined),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Category(
                    text: 'Fast food',
                    icon: Icon(Icons.fastfood_sharp),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Food Menu",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodMenu(
                  backgroundColor: Color.fromARGB(77, 52, 152, 219),
                  text: "Burger",
                  imagePath: "images\\Burger2.png",
                ),
                SizedBox(
                  width: 16,
                ),
                FoodMenu(
                  backgroundColor: Color.fromARGB(77, 156, 89, 182),
                  text: "Pizza",
                  imagePath: "images\\Pizza.png",
                ),
                SizedBox(
                  width: 16,
                ),
                FoodMenu(
                  backgroundColor: Color.fromARGB(77, 52, 152, 219),
                  text: "BBQ",
                  imagePath: "images\\BBQ.png",
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 8, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Near me",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                Text(
                  "View all",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(left: 16),
              children: const [
                NearMe(
                  restaurantName: "Dapur Ijah Restaurant",
                  restaurantLocation: "13 th Street, 46 W 12th St, NY",
                  restaurantDistance: "3 min - 1.1 km",
                  imagePath: "images\\Food.png",
                ),
                SizedBox(
                  height: 16,
                ),
                NearMe(
                  restaurantName: "Dapur Ijah Restaurant",
                  restaurantLocation: "13 th Street, 46 W 12th St, NY",
                  restaurantDistance: "3 min - 1.1 km",
                  imagePath: "images\\Food.png",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
