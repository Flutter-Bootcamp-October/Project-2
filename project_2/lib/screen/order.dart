// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:project_2/widgets/filed_menu.dart';
import 'package:project_2/widgets/food_container.dart';
import 'package:project_2/widgets/menu_category.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const FiledMenu(hintext: 'Search'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    MenuCategory(
                      image: Image.asset(
                        "assets\\coffee-cup 1.png",
                        color: Colors.black,
                      ),
                      titl: 'Drink',
                    ),
                    MenuCategory(
                      image: Image.asset(
                        "assets\\Vector.png",
                        color: Colors.white,
                      ),
                      titl: 'Food',
                      color: const Color.fromRGBO(211, 84, 0, 1),
                    ),
                    MenuCategory(
                      image: Image.asset(
                        "assets\\piece-of-cake 1.png",
                        color: Colors.black,
                      ),
                      titl: 'Cake',
                    ),
                    MenuCategory(
                      image: Image.asset(
                        "assets\\potato-chips 1.png",
                        color: Colors.black,
                      ),
                      titl: 'Snack',
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Food menu',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodContainr(
                        name: 'Burger',
                        color: const Color.fromRGBO(52, 152, 219, 0.3),
                        image: Image.asset("assets\\image1.png")),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: FoodContainr(
                          name: 'Pizza',
                          color: const Color.fromRGBO(155, 89, 182, 0.3),
                          image: Image.asset("assets\\image2.png")),
                    ),
                    FoodContainr(
                        name: 'BBQ',
                        color: const Color.fromRGBO(52, 152, 219, 0.3),
                        image: Image.asset(
                          "assets\\image3.png",
                        ))
                  ],
                )),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near Me',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext, int index) {
                    return ListTile(
                        leading: Image.asset("assets\\Rectangle 6.png"),
                        title: const Text("Daour Ijah Restaurant"),
                        subtitle: Column(
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.location_on),
                                Text("13 th Street, 46 W 12th St,NY")
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(Icons.access_time_sharp),
                                Text("3 min-1.1km")
                              ],
                            ),
                            Row(
                              children: _starsRepeat(),
                            )
                          ],
                        ));
                  }),
            )
          ],
        ),
      ),
    );
  }

  List<Icon> _starsRepeat() {
    List<Icon> star = [];
    for (var i = 0; i < 5; i++) {
      star.add(const Icon(
        Icons.star,
        color: Color.fromARGB(255, 245, 222, 18),
      ));
    }
    return star;
  }
}
