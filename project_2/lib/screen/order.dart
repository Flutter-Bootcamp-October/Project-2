import 'package:flutter/material.dart';
import 'package:project_2/widgets/tex_filed.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TexField(hintext: "Search", tru: false),
            Text("haiiiiiiiiiii")
          ],
        ),
      ),
    );
  }
}
