import 'package:flutter/material.dart';
import 'package:project_two/widgets/resturant_info.dart';

class ResturantList extends StatelessWidget {
  const ResturantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('lib/assets/images/resturant.png'),
                const ResturantInfo()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset('lib/assets/images/resturant.png'),
                const ResturantInfo()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
