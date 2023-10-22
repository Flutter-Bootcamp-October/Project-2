import 'package:flutter/material.dart';

class OrderTitle extends StatelessWidget {
  const OrderTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 112,
        top: 24,
      ),
      child: Text(
        'Review Food',
        style: TextStyle(
          fontFamily: 'Poppis',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
