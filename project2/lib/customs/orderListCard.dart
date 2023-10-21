import 'package:flutter/material.dart';
import 'package:project2/textStyle/textStyle.dart';

class OrderListCard extends StatelessWidget {
  const OrderListCard({super.key, required this.icon1, required this.icon2});

  final String icon1;
  final String icon2;

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
                  width: 80,
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
                    "Dogmie jagong tutung",
                    style: style3(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/likeIcon.png"),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [
                          Text(
                            "999+ |",
                            style: style4(),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        children: [
                          Image.asset("assets/dislikeIcon.png"),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: [Text("93+", style: style4())],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Column(
                        children: [Image.asset(icon1)],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [Image.asset(icon2)],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "\$99.99",
                    style: style5(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
