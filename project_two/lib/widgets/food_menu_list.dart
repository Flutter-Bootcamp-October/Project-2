import 'package:flutter/material.dart';

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
              child: Image.asset('lib/assets/images/burgers.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('lib/assets/images/pizzas.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('lib/assets/images/bbq.png'),
            ),
          ],
        ),
      ),
    );
  }
}
