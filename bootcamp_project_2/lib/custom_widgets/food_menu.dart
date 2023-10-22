import 'package:bootcamp_project_2/custom_widgets/restaurant_info.dart';
import 'package:bootcamp_project_2/custom_widgets/space_by_20_pixels.dart';
import 'package:flutter/material.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 130,
                  width: 130,
                  child: Image.asset('lib/assets/images/food.png'),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    'Dapur Ijah Restaurant',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
                RestaurantInfo(
                  text: '13 th Street, 46 W 12th St, NY',
                  src: 'lib/assets/icons/small-pin.png',
                ),
                RestaurantInfo(
                  text: '3 min - 1.1 km',
                  src: 'lib/assets/icons/clock.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset('lib/assets/icons/star.png'),
                ),
              ],
            ),
          ],
        ),
        SpaceBy20Pixels(),
      ],
    );
  }
}
