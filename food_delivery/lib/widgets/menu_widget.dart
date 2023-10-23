import 'package:flutter/material.dart';

class Menuwidget extends StatelessWidget {
  const Menuwidget(
      {super.key,
      required this.name,
      required this.imagelink,
      required this.Backgraondcolor});
  final String name;
  final String imagelink;
  final bool Backgraondcolor;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: 130,
          height: 130,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Backgraondcolor == true
                  ? Colors.lightBlue[500]!.withOpacity(0.3)
                  : Colors.purple[400]!.withOpacity(0.3)),
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: 15,
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  )),
              Positioned(
                right: -30,
                bottom: -25,
                child: Image.asset(
                  imagelink,
                  width: 120,
                  height: 120,
                ),
              ),
            ],
          ))
    ]);
  }
}
