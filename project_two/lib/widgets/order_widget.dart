import 'package:flutter/material.dart';
import 'package:project_two/widgets/evaluation.dart';

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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dogmie jagong tutung',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
              Row(
                children: [
                  Icon(size: 12, Icons.thumb_up_alt_outlined),
                  Text(" 999+ |"),
                  Icon(size: 12, Icons.thumb_down_alt_outlined),
                  Text(" 93+"),
                ],
              ),
              Text("\$99.99",
                  style: TextStyle(
                      fontFamily: 'Popppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2ECC71))),
            ],
          ),
          const EvaluationButtons()
        ],
      ),
    );
  }
}
