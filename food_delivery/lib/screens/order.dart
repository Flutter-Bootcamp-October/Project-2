import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/buttons.dart';
import 'package:food_delivery/widgets/order_list.dart';

class Order extends StatelessWidget {
  const Order({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        toolbarHeight: 160,
        leading:
            const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        title: const Text(
          "Review Food",
          style:
              TextStyle(color: Color(0xff0000000), fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
      ),
      body: Column(
        children: [
          const OrderList(),
          Button(
              title: "Send",
              color: const Color(0xffffffff),
              backgroundColor: const Color(0xffD35400),
              onpressed: () {}),
        ],
      ),
    );
  }
}
