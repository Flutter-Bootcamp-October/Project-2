import 'package:flutter/material.dart';

class FacebookGoogle extends StatelessWidget {
  const FacebookGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            "assets\\facebook 1.png",
            height: 35,
            width: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Image.asset(
            "assets\\google-plus 1.png",
            height: 35,
            width: 35,
          ),
        )
      ],
    );
  }
}
