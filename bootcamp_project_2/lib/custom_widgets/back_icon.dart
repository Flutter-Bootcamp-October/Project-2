import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24),
      child: Image.asset('lib/assets/icons/chevron-left.jpg'),
    );
  }
}
