import 'package:flutter/material.dart';
import 'package:project2/extentions/size_extention.dart';

import '../../../../data/colors.dart';
import '../../../../data/icons.dart';
import '../../../../data/texts.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16),
      child: SizedBox(
        height: context.heightSize() * .2,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: menuRowText.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: menuRowContainerColors[index],
                  borderRadius: BorderRadius.circular(20)),
              width: context.widthSize() * .4,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    child: Text(
                      menuRowText[index],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                    right: -24,
                    bottom: -30,
                    child: Image.asset(
                      scale: 0.88,
                      menuImagesRow[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 20);
          },
        ),
      ),
    );
  }
}
