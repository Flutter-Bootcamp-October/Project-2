import 'package:flutter/material.dart';

class OrConnectWith extends StatelessWidget {
  const OrConnectWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 2,
              width: 250,
              decoration: BoxDecoration(
                color: const Color.fromARGB(76, 52, 73, 94),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const Text(
              "\tOr connect with",
              style: TextStyle(color: Color(0xff34495E), fontSize: 14),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("images\\facebook.png"),
            const SizedBox(
              width: 22,
            ),
            Image.asset("images\\google.png"),
            const SizedBox(
              width: 22,
            ),
          ],
        ),
      ],
    );
  }
}
