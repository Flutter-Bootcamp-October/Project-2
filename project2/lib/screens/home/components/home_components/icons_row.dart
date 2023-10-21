import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({
    super.key,
    required this.iconsList,
    required this.colorList,
    required this.namesList,
  });

  final List<SvgPicture> iconsList;
  final List<Color> colorList;
  final List<String> namesList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: iconsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorList[index],
                      // boxShadow: [
                      //   BoxShadow(
                      //     //color: colorList[index],
                      //     blurRadius: 10.0,
                      //   ),
                      // ]
                    ),
                    child: IconButton(
                      icon: iconsList[index],
                      color: Colors.white,

                      // size: 30,
                      // shadows: [
                      //   Shadow(
                      //     color: colorList[index],
                      //   )],
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Expanded(flex: 1, child: Text(namesList[index])),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}
