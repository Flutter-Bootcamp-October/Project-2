import 'package:flutter/material.dart';
import 'package:project_two/widgets/my_button.dart';
import 'package:project_two/widgets/order_widget.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Review Food",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        body: const Center(
          child: Column(children: [
            Order(),
            Order(),
            Order(),
            SizedBox(height: 250),
            MyButton(
              buttonTitle: 'Send',
              buttonColor: Color(0xFFD35400),
              textColor: Colors.white,
            ),
          ]),
        ));
  }
}
