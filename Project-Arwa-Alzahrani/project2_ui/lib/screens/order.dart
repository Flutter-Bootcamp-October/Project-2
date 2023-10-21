import 'package:flutter/material.dart';
import 'package:project2_ui/custom_widget/custom_elevatedButton.dart';
import 'package:project2_ui/custom_widget/custom_reviewFood.dart';
import 'package:project2_ui/screens/bottomNavigationBar.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Review Food",
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 18)),
        centerTitle: true,
        leading: Container(
          child: InkWell(
            child: Image.asset("assets/images/back.png"),
            onTap: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Column(
          children: [
            CustomReviewFood(
                colorContainerOne: Color.fromRGBO(236, 240, 241, 1),
                colorContainerTwo: Color.fromRGBO(211, 84, 0, 1),
                colorIconOne: Color.fromRGBO(52, 73, 94, 1),
                colorIconTwo: Color.fromRGBO(255, 255, 255, 1)),
            SizedBox(
              height: 15,
            ),
            CustomReviewFood(
              colorContainerOne: Color.fromRGBO(211, 84, 0, 1),
              colorContainerTwo: Color.fromRGBO(236, 240, 241, 1),
              colorIconOne: Color.fromRGBO(255, 255, 255, 1),
              colorIconTwo: Color.fromRGBO(52, 73, 94, 1),
            ),
            SizedBox(
              height: 15,
            ),
            CustomReviewFood(
              colorContainerOne: Color.fromRGBO(236, 240, 241, 1),
              colorContainerTwo: Color.fromRGBO(236, 240, 241, 1),
              colorIconOne: Color.fromRGBO(52, 73, 94, 1),
              colorIconTwo: Color.fromRGBO(52, 73, 94, 1),
            ),
            SizedBox(
              height: 250,
            ),
            CustomElevatedButton(
                colorBckground: Color.fromRGBO(211, 84, 0, 1),
                text: "Send",
                className: BottomNavigation(),
                textColor: Color.fromRGBO(255, 255, 255, 1),
                widthButton: 330)
          ],
        ),
      ),
    );
  }
}
