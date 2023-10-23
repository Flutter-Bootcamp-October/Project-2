import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category(
      {super.key,
      required this.imagelink,
      this.colorButton = const Color(0xffECF0F1),
      required this.categoryname,
      this.colorimage = Colors.black});
  Color colorButton;
  final String imagelink;
  final String categoryname;
  Color colorimage;
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(70, 70),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: widget.colorButton,
            ),
            onPressed: () {
              _change();
              setState(() {});
            },
            child: Image.asset(widget.imagelink, color: widget.colorimage),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(widget.categoryname,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  _change() {
    if (widget.colorButton == const Color(0xffECF0F1)) {
      widget.colorButton = const Color(0xffD35400);
      widget.colorimage = const Color(0xffECF0F1);
    } else {
      widget.colorButton = const Color(0xffECF0F1);
      widget.colorimage = Colors.black;
    }
  }
}
