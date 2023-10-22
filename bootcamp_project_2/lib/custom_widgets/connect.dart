import 'package:bootcamp_project_2/extentions/spaces.dart';
import 'package:flutter/material.dart';

class Connect extends StatelessWidget {
  const Connect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 1,
              width: context.getWidth() * 0.65,
              color: Color.fromARGB(77, 52, 73, 94),
            ),
            Text(
              '    Or connect with',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: Color(0xff34495E),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            right: 32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('lib/assets/icons/connect.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}
