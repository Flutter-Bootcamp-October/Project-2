import 'package:bootcamp_project_2/extentions/spaces.dart';
import 'package:flutter/material.dart';

class SpaceBy20Percent extends StatelessWidget {
  const SpaceBy20Percent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getTopSpaceBy20Percent(),
    );
  }
}
