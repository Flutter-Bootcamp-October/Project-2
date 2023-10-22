import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
      ),
      child: Row(
        children: [
          Image.asset('lib/assets/icons/pin.png'),
          Text(
            '  9 West 46 Th Street, New York City',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
