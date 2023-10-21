import 'package:flutter/material.dart';
import 'package:food_delivery/app_colors/app_colors.dart';

class ReviewFood extends StatelessWidget {
  const ReviewFood(
      {super.key,
      required this.restaurantName,
      required this.like,
      required this.dislike,
      required this.price,
      required this.imagePath});
  final String restaurantName;
  final int like;
  final int dislike;
  final double price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(imagePath, scale: 1.3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurantName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 16,
                      ),
                      Text("+$like | "),
                      const Icon(
                        Icons.thumb_down_alt_outlined,
                        size: 16,
                      ),
                      Text("+$dislike"),
                      const SizedBox(
                        width: 88,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: appOrange),
                        child: const Icon(
                          Icons.thumb_up_alt_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: appgrey),
                        child: const Icon(
                          Icons.thumb_down_alt_outlined,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "\$$price",
                  style: const TextStyle(color: Color(0xff2ECC71)),
                ),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
