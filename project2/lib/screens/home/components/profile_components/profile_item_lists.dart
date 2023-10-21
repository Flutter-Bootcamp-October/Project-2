import 'package:flutter/material.dart';

import '../../../../data/texts.dart';

class ProfileItemsList extends StatelessWidget {
  const ProfileItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: profileTextList.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 45,
          child: ListTile(
            title: Text(
              profileTextList[index],
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right_sharp),
          ),
        );
      },
    );
  }
}
