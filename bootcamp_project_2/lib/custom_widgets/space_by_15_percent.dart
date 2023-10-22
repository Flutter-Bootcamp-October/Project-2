import 'package:bootcamp_project_2/extentions/spaces.dart';
import 'package:flutter/material.dart';

class SpaceBy15Percent extends StatelessWidget {
  const SpaceBy15Percent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getTopSpaceBy15Percent(),
    );
  }
}
