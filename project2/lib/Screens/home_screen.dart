import 'package:flutter/material.dart';
import '../styles/custom_colors.dart';
import '../styles/custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 60,
            ),
            Column(
              children: const [SearchFeild()],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: const [
                  Icon(Icons.location_pin),
                  Text("9 West 46 Th Street, New York City"),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Drike
                  FoodCategories(
                    color: gray,
                    urImage: 'assets/images/coffee-cup 1.png',
                  ),

                  // Food
                  FoodCategories(
                    color: orang,
                    urImage: 'assets/images/burger (1) 1.png',
                  ),

                  // Cake
                  FoodCategories(
                    color: gray,
                    urImage: 'assets/images/piece-of-cake 1.png',
                  ),

                  // Snack
                  FoodCategories(
                      color: gray, urImage: 'assets/images/potato-chips 1.png')
                ],
              ),
            ),

            //  Category names
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Drink ",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text("Food", style: TextStyle(fontSize: 16)),
                  SizedBox(
                    width: 70,
                  ),
                  Text("Cake ", style: TextStyle(fontSize: 16)),
                  SizedBox(
                    width: 60,
                  ),
                  Text("Snack", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),

            //Food Menu Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: const [
                  Text(
                    "Food Menu",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContainerFood(
                          text: "Burgers",
                          color: blue,
                          ulImage: "assets/images/image1.png"),
                      ContainerFood(
                          text: 'Pizza',
                          color: purple,
                          ulImage: 'assets/images/image2.png'),
                      ContainerFood(
                          text: "BBQ",
                          color: blue,
                          ulImage: 'assets/images/image3.png')
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: const [
                  Text(
                    "Near Me",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19),
                  ),
                  SizedBox(
                    width: 219,
                  ),
                  Text(
                    "View all",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            NearMe(),
            SizedBox(
              height: 25,
            ),
            NearMe(),
          ]),
        ),
      ),
    );
  }
}
