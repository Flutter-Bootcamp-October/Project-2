import 'package:flutter/material.dart';

class NearMe extends StatelessWidget {
  const NearMe({
    super.key,
    required this.restaurantName,
    required this.restaurantLocation,
    required this.restaurantDistance,
    required this.imagePath,
  });
  final String restaurantName;
  final String restaurantLocation;
  final String restaurantDistance;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurantName,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    const Icon(Icons.location_pin),
                    Text(
                      restaurantLocation,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff34495E)),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_rounded),
                  Text(
                    restaurantDistance,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff34495E)),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xffFFC107),
                    size: 15,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xffFFC107),
                    size: 15,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xffFFC107),
                    size: 15,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xffFFC107),
                    size: 15,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xffFFC107),
                    size: 15,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
