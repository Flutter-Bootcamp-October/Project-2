import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('lib/assets/images/order_picture.png'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Dogmie jagong tutung',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
              Row(
                children: [
                  Image.asset('lib/assets/icons/like.png'),
                  const Text("999+ |"),
                  Image.asset('lib/assets/icons/dislike.png'),
                  const Text(" 93+"),
                ],
              ),
              const Text("\$99.99",
                  style: TextStyle(
                      fontFamily: 'Popppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2ECC71)))
            ],
          ),
          Row(children: [
            //make clickable
            Image.asset('lib/assets/icons/like.png'),
            Image.asset('lib/assets/icons/dislike.png'),
          ])
        ],
      ),
    );
  }
}
