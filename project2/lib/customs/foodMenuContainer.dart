import 'package:flutter/material.dart';
import 'package:project2/textStyle/textStyle.dart';

class foodContainer extends StatelessWidget {
  const foodContainer(
      {super.key,
      required this.textEntry,
      required this.backgroundColor,
      required this.image});
  final String textEntry;
  final dynamic backgroundColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            width: 130,
            height: 130,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Color(backgroundColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 15,
                    top: 10,
                    child: Text(
                      textEntry,
                      style: containeTextStyle(),
                    )),
                Positioned(
                    child: Image.asset(
                  image,
                )),
              ],
            ),
            // child: Column(
            //   children: [
            //     Column(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(top: 10, left: 10),
            //           child: Row(
            //             children: [
            //               Text(
            //                 textEntry,
            //                 style: const TextStyle(
            //                     color: Colors.white,
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.w500),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Image.asset(
            //               image,
            //               width: 95,
            //             ),
            //           ],
            //         )
            //       ],
            //     ),
            //   ],
            // ),
          ),
          const SizedBox(
            width: 150,
          ),
        ],
      ),
    );
  }
}
