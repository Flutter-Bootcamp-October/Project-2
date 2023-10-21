import 'package:flutter/material.dart';
import 'package:project2/Baderlib/container_Img.dart';

class Order extends StatelessWidget {
  const Order({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Review Food',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Your Order Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              // Add more widgets as needed
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    ImageContainer(
                      image: Image.asset('assets/burger.png'),
                      containerColor: Color.fromARGB(141, 52, 152, 219),
                    ),
                    const SizedBox(width: 40.0), // Adjust the spacing as needed
                    ImageContainer(
                      image: Image.asset("assets/image2.png"),
                      containerColor: Color.fromARGB(140, 156, 89, 182),
                    ),
                    const SizedBox(width: 40.0), // Adjust the spacing as needed
                    ImageContainer(
                      image: Image.asset("assets/image3.png"),
                      containerColor: Color.fromARGB(156, 52, 152, 219),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
