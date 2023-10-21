import 'package:flutter/material.dart';

class CustomFoodNearMe extends StatelessWidget {
  const CustomFoodNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/food.png",
        ),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Dapur Ijah Restaurant",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 1)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 12,
                    color: Color.fromRGBO(52, 73, 94, 1),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "13 th Street, 46 W 12th St, NY",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(52, 73, 94, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 12,
                    color: Color.fromRGBO(52, 73, 94, 1),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "3 min - 1.1 km",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(52, 73, 94, 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star,
                    color: Color.fromRGBO(255, 193, 7, 1),
                    size: 15,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
