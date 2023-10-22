import 'package:bootcamp_project_2/extentions/spaces.dart';
import 'package:flutter/material.dart';

class SpaceBy10Percent extends StatelessWidget {
  const SpaceBy10Percent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getTopSpaceBy10Percent(),
    );
  }
}
