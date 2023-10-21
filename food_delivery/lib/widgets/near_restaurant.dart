import 'package:flutter/material.dart';

class Nearrestaurant extends StatelessWidget {
  const Nearrestaurant({super.key, required this.imagelink});
  final String imagelink;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagelink,
                cacheHeight: 120,
                cacheWidth: 120,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dapur Ijah Restaurant',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 16,
                        ),
                        Text(
                          '13 th Street, 46 W 12th St, NY',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 16,
                        ),
                        Text(
                          ' 3 min - 1.1 km',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Image.asset("lib\\assets\\star.png")
                  ],
                ),
              )
            ]));
  }
}
