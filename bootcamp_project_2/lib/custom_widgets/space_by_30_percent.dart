import 'package:bootcamp_project_2/extentions/spaces.dart';
import 'package:flutter/material.dart';

class SpaceBy30Percent extends StatelessWidget {
  const SpaceBy30Percent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getTopSpaceBy30Percent(),
    );
  }
}
