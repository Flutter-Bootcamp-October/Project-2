import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';
import 'package:project_two/widgets/category_selection_button.dart';

class CategoryButtonsList extends StatelessWidget {
  const CategoryButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(bottom: context.getWidithSizing(number: 0.05)),
        child: const Row(
          children: [
            Column(children: [
              CategoryButton(
                iconColor: Color(0xFF000000),
                buttonColor: Color(0xFFECF0F1),
                iconPath: 'lib/assets/icons/coffee-cup.png',
              ),
              Text(
                "Drink",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ]),
            Column(children: [
              CategoryButton(
                iconColor: Color(0xFFFFFFFF),
                buttonColor: Color(0xFFD35400),
                iconPath: 'lib/assets/icons/burger.png',
              ),
              Text(
                "Food",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ]),
            Column(children: [
              CategoryButton(
                iconColor: Color(0xFF000000),
                buttonColor: Color(0xFFECF0F1),
                iconPath: 'lib/assets/icons/piece-of-cake.png',
              ),
              Text(
                "Cake",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ]),
            Column(children: [
              CategoryButton(
                iconColor: Color(0xFF000000),
                buttonColor: Color(0xFFECF0F1),
                iconPath: 'lib/assets/icons/potato-chips.png',
              ),
              Text(
                "Snack",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
