import 'package:flutter/material.dart';
import 'package:project_two/widgets/menu_item.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuItem(
                  imagePath: 'lib/assets/images/burger_menu.png',
                  itemColor: Color(0xFFADD5F0),
                  itemName: "Burgers"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuItem(
                  imagePath: 'lib/assets/images/pizza_menu.png',
                  itemColor: Color(0xFFDCC4E5),
                  itemName: "Pizza"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuItem(
                  imagePath: 'lib/assets/images/bbq_menu.png',
                  itemColor: Color(0xFFADD5F0),
                  itemName: "BBQ"),
            ),
          ],
        ),
      ),
    );
  }
}
