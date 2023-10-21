import 'package:flutter/material.dart';

import '../authentication/components/auth_button.dart';

import 'components/exports.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Food Review",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            )),
        centerTitle: true,
        leading: IconButton(
          style: IconButton.styleFrom(highlightColor: Colors.transparent),
          icon: const Icon(Icons.keyboard_arrow_left_sharp),
          onPressed: () {},
        ),
      ),
      body: const SingleChildScrollView(
        child: FoodReviewColumn(),
      ),
      floatingActionButton: AuthButton(
          textContent: "Send",
          buttonColor: signInButtonColor,
          textColor: signInTextColor,
          func: () {}),
    );
  }
}
