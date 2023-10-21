import 'package:flutter/material.dart';
import 'package:project2/customs/appBarmethod.dart';
import 'package:project2/customs/customWidget.dart';
import 'package:project2/customs/orderListCard.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarmethod(this.context, 'Review Food'),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    OrderListCard(
                      icon1: 'assets/dislikeContainerWhite.png',
                      icon2: 'assets/likeContainerOrange.png',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OrderListCard(
                      icon1: 'assets/dislikeContainerOrange.png',
                      icon2: 'assets/likeContainerWhite.png',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OrderListCard(
                      icon1: 'assets/dislikeContainerWhite.png',
                      icon2: 'assets/likeContainerWhite.png',
                    ),
                  ],
                ),
              ),
            ),
          ),
          ContainerWidgetsButton(
            textEntry: "Send",
            backgroundColor: 0xffD35400,
            textColor: 0xFFFFFFFF,
            pageName: OrderPage(),
          ),
          SizedBox(
            height: 40,
          ),
        ]),
      ),
    );
  }
}
