import 'package:flutter/material.dart';
import 'package:project_food_app_flutter/widgets/custom_order_widgets/custom_order.screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [CustomOrderScreen()]),
        ),
      ),
    );
  }
}
