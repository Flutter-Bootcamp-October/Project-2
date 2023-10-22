import 'package:flutter/material.dart';

class CustomReviewFood extends StatelessWidget {
  const CustomReviewFood(
      {super.key,
      required this.colorContainerOne,
      required this.colorContainerTwo,
      required this.colorIconOne,
      required this.colorIconTwo});
  final Color colorContainerOne, colorContainerTwo, colorIconOne, colorIconTwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/food.png",
          width: 80,
          height: 80,
        ),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Dogmie jagong tutung",
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/like.png",
                    width: 12,
                    height: 12,
                    color: const Color.fromRGBO(52, 73, 94, 1),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "999+ |",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(52, 73, 94, 1)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    "assets/images/deslike.png",
                    width: 12,
                    height: 12,
                    color: const Color.fromRGBO(52, 73, 94, 1),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "93+",
                    style: TextStyle(
                        color: Color.fromRGBO(52, 73, 94, 1), fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "\$99.99",
                style: TextStyle(
                    color: Color.fromRGBO(46, 204, 113, 1), fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Row(
          children: [
            Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: colorContainerOne),
              child: Image.asset(
                "assets/images/deslike.png",
                color: colorIconOne,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: colorContainerTwo),
              child: Image.asset(
                "assets/images/like.png",
                color: colorIconTwo,
              ),
            )
          ],
        )
      ],
    );
  }
}
