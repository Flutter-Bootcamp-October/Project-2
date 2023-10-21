import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';
import 'package:project_two/widgets/category_selection_buttons_list.dart';
import 'package:project_two/widgets/food_menu_list.dart';
import 'package:project_two/widgets/resturant_list.dart';
import 'package:project_two/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          const SizedBox(height: 50),
          const MySearchBar(),
          Padding(
            padding:
                EdgeInsets.only(left: context.getWidithSizing(number: 0.05)),
            child: const Row(children: [
              ImageIcon(size: 40, AssetImage('lib/assets/icons/pin.png')),
              Text(
                "9 West 46 Th Street, New York City",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
            ]),
          ),
          const CategoryButtonsList(),
          Padding(
            padding: EdgeInsets.only(
                left: context.getWidithSizing(number: 0.05),
                right: context.getWidithSizing(number: 0.05)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Food Menu",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Text(
                    //make clickable?
                    "View All",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ]),
          ),
          const MenuList(),
          Padding(
            padding: EdgeInsets.only(
                left: context.getWidithSizing(number: 0.05),
                right: context.getWidithSizing(number: 0.05)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near Me",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ]),
          ),
          const ResturantList()
        ])),
      ),
    );
  }
}
