import 'package:flutter/material.dart';

class ResturanListCard extends StatelessWidget {
  const ResturanListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/dish.png",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dapur Ijah Restaurant",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/location.png"),
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Column(
                        children: [
                          Text(
                            "13 Street, 46 W 12th St, NY",
                            style: TextStyle(color: Color(0xff34495E)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/clock.png"),
                        ],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Column(
                        children: [
                          Text(
                            "3 min - 1.1 km",
                            style: TextStyle(color: Color(0xff34495E)),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/star.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
