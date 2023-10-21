import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key,this.Boottom=10, required this.top, this.left=16});
  final double Boottom;
  final double top;
  final double left;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding:  EdgeInsets.only(bottom: Boottom, top: top, left: left),
          child: Row(
            children: [
              Container(
                width: 230,
                height: 2,
                color: Colors.grey,
              ),
              const Text(
                "    Or connect with",
                style: TextStyle(color: Color(0xff34495E)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.facebook_sharp,
                color: Color(0xff3B5998),
                size: 37,
                //weight: 30,
              ),
              Image.asset(
                'lib\\assets\\google-plus 1.png',
                width: 30,
                height: 30,
              )
            ],
          ),
        ),
      ],
    );
  }
}
