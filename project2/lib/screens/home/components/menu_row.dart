import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project2/extentions/size_extention.dart';

import '../../../data/colors.dart';
import '../../../data/icons.dart';
import '../../../data/texts.dart';

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
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: menuRowContainerColors[index],
                      borderRadius: BorderRadius.circular(35)),
                  width: context.widthSize() * .4,
                ),
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
                  bottom: -24,
                  child: Image.asset(
                    menuImagesRow[index],
                  ),
                ),
              ],
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
