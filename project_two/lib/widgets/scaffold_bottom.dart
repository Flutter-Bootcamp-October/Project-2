import 'package:flutter/material.dart';

class ScaffoldBottom extends StatelessWidget {
  const ScaffoldBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Image.asset('lib/assets/icons/line.png'),
          const Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text("Or connect with"),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('lib/assets/icons/facebook.png'),
            ),
            Image.asset('lib/assets/icons/google_plus.png')
          ],
        ),
      )
    ]);
  }
}
