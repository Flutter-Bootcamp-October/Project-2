import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_navigationBar.dart';
import 'package:food_delivery/widgets/button1.dart';
import 'package:food_delivery/widgets/display_items.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Review Food',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            elevation: 0),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Displayitem(
                              colorButton: const Color(0xffECF0F1),
                              imagelink: "lib\\assets\\Rectangle 6.png",
                              price: '\$99.99',
                            ),
                            Displayitem(
                              colorButton: const Color(0xffECF0F1),
                              imagelink: "lib\\assets\\Rectangle 6.png",
                              price: '\$99.99',
                            ),
                            Displayitem(
                              colorButton: const Color(0xffECF0F1),
                              imagelink: "lib\\assets\\Rectangle 6.png",
                              price: '\$99.99',
                            ),
                          ],
                        )),
                  ],
                ),
                Button1(
                  Colorbutton: const Color(0xffD35400),
                  title: 'Send',
                  isTrue: true,
                  pushto: const BottomNavigationBarApp(),
                )
              ],
            ),
          ),
        ));
  }
}
