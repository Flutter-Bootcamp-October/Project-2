import 'package:flutter/material.dart';

class ConnectWithRow extends StatelessWidget {
  const ConnectWithRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              flex: 3,
              child: Divider(
                thickness: 2,
                color: Color(0x34495E4D),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "  Or connect with",
                style: TextStyle(
                    color: Color(0xFF34495E),
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/facebook 1.png"),
              const SizedBox(width: 15),
              Image.asset("assets/images/google-plus 1.png")
            ],
          ),
        ),
      ],
    );
  }
}
