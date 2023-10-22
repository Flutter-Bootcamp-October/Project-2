import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 285,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xff34495E)),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Or connect with",
              style: TextStyle(fontSize: 10, color: Color(0xff34495E)),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/facebook.png",
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 13,
              ),
              Image.asset(
                "assets/images/google-plus.png",
                width: 30,
                height: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
