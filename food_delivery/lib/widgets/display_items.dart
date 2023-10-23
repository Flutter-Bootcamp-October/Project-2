import 'package:flutter/material.dart';

bool islikeSelected = false;
bool isdislikeSelected = false;

class Displayitem extends StatefulWidget {
  Displayitem(
      {super.key,
      this.colorimage = Colors.black,
      required this.colorButton,
      required this.imagelink, required this.price});
  Color colorButton;
  Color colorimage;
  int selected = 0;
  final String imagelink;
  final String price;
  @override
  State<Displayitem> createState() => _DisplayitemState();
}

class _DisplayitemState extends State<Displayitem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(widget.imagelink),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dogmie jagong tutung',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 15,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('999+ | ',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal)),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.thumb_down_off_alt_outlined, size: 15),
                  SizedBox(
                    width: 10,
                  ),
                  Text('93+',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(widget.price,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2ECC71)))
            ],
          ),
          CircleAvatar(
            backgroundColor:
                islikeSelected ? const Color(0xffD35400) : widget.colorButton,
            radius: 15,
            child: IconButton(
              iconSize: 15,
              color:
                  islikeSelected ? const Color(0xffECF0F1) : widget.colorimage,
              onPressed: () {
                setState(() {
                  islikeSelected = true;
                  isdislikeSelected = false;
                });
              },
              icon: const Icon(
                Icons.thumb_up_alt_outlined,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: isdislikeSelected
                ? const Color(0xffD35400)
                : widget.colorButton,
            radius: 15,
            child: IconButton(
                iconSize: 15,
                color: isdislikeSelected
                    ? const Color(0xffECF0F1)
                    : widget.colorimage,
                onPressed: () {
                  setState(() {
                    islikeSelected = false;
                    isdislikeSelected = true;
                  });
                },
                icon: const Icon(
                  Icons.thumb_down_off_alt_outlined,
                )),
          )
        ],
      ),
    );
  }
}
