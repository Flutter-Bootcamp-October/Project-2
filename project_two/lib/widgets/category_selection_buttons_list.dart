import 'package:flutter/material.dart';
import 'package:project_two/extentions.dart';
import 'package:project_two/widgets/category_selection_button.dart';

class CategoryButtonsList extends StatefulWidget {
  const CategoryButtonsList({super.key});

  @override
  State<CategoryButtonsList> createState() => _CategoryButtonsListState();
}

class _CategoryButtonsListState extends State<CategoryButtonsList> {
  Color iconColor = Colors.black;
  Color buttonColor = const Color(0xFFECF0F1);
  Color iconColorSelected = Colors.white;
  Color buttonColorSelected = const Color(0xFFD35400);
  List<Widget> allButtons = [
    const CategoryButton(
      iconPath: 'lib/assets/icons/coffee-cup.png',
    ),
    const CategoryButton(
      iconPath: 'lib/assets/icons/burger.png',
    ),
    const CategoryButton(
      iconPath: 'lib/assets/icons/piece-of-cake.png',
    ),
    const CategoryButton(
      iconPath: 'lib/assets/icons/potato-chips.png',
    ),
  ];
  List<bool> myIsSelected = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    // ToggleButtons(
    //     selectedColor: buttonColorSelected,
    //     disabledColor: buttonColor,
    //     isSelected: myIsSelected,
    //     children: allButtons,
    //     onPressed: (int index) {
    //       setState(() {
    //         myIsSelected[index] = !myIsSelected[index];
    //       });
    //     });
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(bottom: context.getWidithSizing(number: 0.05)),
        child: Row(
          children: [
            Column(children: [
              allButtons[0],
              const Text(
                "Drink",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ]),
            Column(children: [
              allButtons[1],
              const Text(
                "Food",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ]),
            Column(children: [
              allButtons[2],
              const Text(
                "Cake",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            ]),
            Column(children: [
              allButtons[3],
              const Text(
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
