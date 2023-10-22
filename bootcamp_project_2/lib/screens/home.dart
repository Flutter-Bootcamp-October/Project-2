import 'package:bootcamp_project_2/custom_widgets/classifications.dart';
import 'package:bootcamp_project_2/custom_widgets/custom_text_filed_with_icon.dart';
import 'package:bootcamp_project_2/custom_widgets/food_classification.dart';
import 'package:bootcamp_project_2/custom_widgets/food_menu.dart';
import 'package:bootcamp_project_2/custom_widgets/location.dart';
import 'package:bootcamp_project_2/custom_widgets/screen_divison.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_10_percent.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_20_pixels.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_40_pixels.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpaceBy10Percent(),
            CustomTextFiledWithIcon(
              hint: 'Search',
              icon: Image.asset('lib/assets/icons/search.png'),
            ),
            SpaceBy20Pixels(),
            Location(),
            SpaceBy40Pixels(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Classifications(
                    title: 'Drink',
                    backGroundColor: Color(0xffECF0F1),
                    iconColor: Colors.black,
                    src: 'lib/assets/icons/coffee.png',
                  ),
                  Classifications(
                    title: 'Food',
                    backGroundColor: Color(0xffD35400),
                    iconColor: Colors.white,
                    src: 'lib/assets/icons/burger.png',
                  ),
                  Classifications(
                    title: 'Cake',
                    backGroundColor: Color(0xffECF0F1),
                    iconColor: Colors.black,
                    src: 'lib/assets/icons/cake.png',
                  ),
                  Classifications(
                    title: 'Snack',
                    backGroundColor: Color(0xffECF0F1),
                    iconColor: Colors.black,
                    src: 'lib/assets/icons/potato.png',
                  ),
                ],
              ),
            ),
            SpaceBy20Pixels(),
            ScreenDivison(
              leftTitle: 'Food Menu',
              rightTitle: 'View all',
            ),
            SpaceBy20Pixels(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodClassification(
                    title: 'Burgers',
                    backGroundColor: Color.fromARGB(77, 52, 152, 219),
                    src: 'lib/assets/images/image1.png',
                    bottom: -28,
                    right: -32,
                  ),
                  FoodClassification(
                    title: 'Pizza',
                    backGroundColor: Color.fromARGB(77, 156, 89, 182),
                    src: 'lib/assets/images/image2.png',
                    bottom: -38,
                    right: -35,
                  ),
                  FoodClassification(
                    title: 'BBQ',
                    backGroundColor: Color.fromARGB(77, 52, 152, 219),
                    src: 'lib/assets/images/image3.png',
                    bottom: -32,
                    right: -58,
                  ),
                ],
              ),
            ),
            SpaceBy20Pixels(),
            ScreenDivison(
              leftTitle: 'Near Me',
              rightTitle: 'View all',
            ),
            SpaceBy20Pixels(),
            for (int i = 0; i < 2; i++) FoodMenu(),
          ],
        ),
      ),
    );
  }
}
