import 'package:bootcamp_project_2/custom_widgets/space_by_20_pixels.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('lib/assets/images/women.png')),
        SpaceBy20Pixels(),
        Center(
          child: Text(
            'Itoh',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              '+1 11229382748',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
