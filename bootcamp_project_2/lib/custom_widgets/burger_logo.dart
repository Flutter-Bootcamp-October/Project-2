import 'package:flutter/material.dart';

class BurgerLogo extends StatelessWidget {
  const BurgerLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Color.fromARGB(128, 211, 84, 0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Image.asset('lib/assets/images/hamburger.png'),
        ),
      ),
    );
  }
}
