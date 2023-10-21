import 'package:flutter/material.dart';
import 'package:project2/Baderlib/container_Img.dart';
import 'package:project2/Baderlib/custom_iconbutton.dart';
import 'package:project2/Baderlib/text_field.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              label: 'Search',
              iconData: Icons.search,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 200),
            child: Icon(
              Icons.location_pin,
              color: Colors.black,
              size: 28,
            ),
          ),
          const Text(
            "9 West 46 Th Street, New York City",
            style: TextStyle(
              fontFamily: "Robot",
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          Container(
            height: 100, // Set the desired height for the buttons
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomButton(
                    iconData: Icons.local_drink,
                    buttonText: 'Drink',
                  ),
                  const SizedBox(width: 40.0), // Adjust the spacing as needed
                  CustomButton(
                    iconData: Icons.fastfood,
                    buttonText: 'Food',
                  ),
                  const SizedBox(width: 40.0), // Adjust the spacing as needed
                  CustomButton(
                    iconData: Icons.cake,
                    buttonText: 'Cake',
                  ),
                  const SizedBox(width: 40.0), // Adjust the spacing as needed
                  CustomButton(
                    iconData: Icons.local_dining,
                    buttonText: 'Snack',
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ImageContainer(
                  image: Image.asset('assets/burger.png'),
                  containerColor: Color.fromARGB(141, 52, 152, 219),
                ),
                const SizedBox(width: 40.0), // Adjust the spacing as needed
                ImageContainer(
                  image: Image.asset("assets/image2.png"),
                  containerColor: Color.fromARGB(140, 156, 89, 182),
                ),
                const SizedBox(width: 40.0), // Adjust the spacing as needed
                ImageContainer(
                  image: Image.asset("assets/image3.png"),
                  containerColor: Color.fromARGB(156, 52, 152, 219),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ImageContainer(
                    image: Image.asset('assets/FoodL.png'),
                    containerColor: Color.fromARGB(141, 52, 152, 219),
                  ),
                  const SizedBox(width: 40.0), // Adjust the spacing as needed
                  ImageContainer(
                    image: Image.asset("assets/FoodL.png"),
                    containerColor: Color.fromARGB(140, 156, 89, 182),
                  ),
                  const SizedBox(width: 40.0), // Adjust the spacing as needed
                  ImageContainer(
                    image: Image.asset("assets/FoodL.png"),
                    containerColor: Color.fromARGB(156, 52, 152, 219),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
