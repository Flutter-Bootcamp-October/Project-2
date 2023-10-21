import 'package:flutter/material.dart';
import 'package:project_two/widgets/menu_item.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MenuItem(
                  imagePath: 'lib/assets/images/burger_menu.png',
                  itemColor: const Color(0xFF3498DB).withOpacity(.3),
                  itemName: "Burgers"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MenuItem(
                  imagePath: 'lib/assets/images/pizza_menu.png',
                  itemColor: const Color(0xFF9B59B6).withOpacity(.3),
                  itemName: "Pizza"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MenuItem(
                  imagePath: 'lib/assets/images/bbq_menu.png',
                  itemColor: const Color(0xFF3498DB).withOpacity(.3),
                  itemName: "BBQ"),
            ),
          ],
        ),
      ),
    );
  }
}
