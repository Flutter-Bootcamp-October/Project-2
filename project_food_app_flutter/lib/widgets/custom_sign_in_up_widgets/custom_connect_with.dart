import 'package:flutter/material.dart';

class CustomConnectWith extends StatefulWidget {
  const CustomConnectWith({super.key});

  @override
  State<CustomConnectWith> createState() => _CustomConnectWithState();
}

class _CustomConnectWithState extends State<CustomConnectWith> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromARGB(164, 52, 73, 94)),
                  height: 2,
                  width: MediaQuery.of(context).size.width / 1.60,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Or connect with")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/facebook.png",
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/google-plus.png",
                  height: 50,
                  width: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
