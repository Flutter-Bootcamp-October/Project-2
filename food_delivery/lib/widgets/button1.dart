import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  Button1(
      {super.key,
      required this.Colorbutton,
      required this.title,
      required this.isTrue,
      required this.pushto});
  final Color Colorbutton;
  final String title;
  final bool isTrue;
  Widget pushto;

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(900, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              backgroundColor: widget.Colorbutton),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => widget.pushto));
          },
          child: Text(
            widget.title,
            style: TextStyle(
                color: widget.isTrue == true ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
    );
  }
}
