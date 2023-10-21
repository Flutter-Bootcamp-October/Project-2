import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, right: 24),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: const Divider(
                    thickness: 2,
                    color: Color(0xff34495e4d),
                    endIndent: 16,
                  ),
                ),
              ),
              const Text("Or connect with"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/Images/facebook.png",
                width: 36,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "assets/Images/googleplus.png",
                width: 32,
              ),
            ],
          ),
        )
      ],
    );
  }
}
