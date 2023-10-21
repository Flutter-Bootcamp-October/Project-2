import 'package:flutter/material.dart';
import 'package:project2/styles/custom_colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65),
            child: Text(
              "Review Food",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 19),
            ),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/images/Rectangle 6 (1).png",
                  width: 50,
                ),
                title: const Text(
                  "Dogmie jagong tutung",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/like 1.png"),
                        const Text(" 999+ |  "),
                        Image.asset("assets/images/like 2.png"),
                        Text(" 93+"),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$99.99",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  Image.asset("assets/images/like (1).png"),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/like.png"),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/Rectangle 6 (1).png",
                  width: 50,
                ),
                title: const Text(
                  "Dogmie jagong tutung",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/like 1.png"),
                        const Text(" 999+ |  "),
                        Image.asset("assets/images/like 2.png"),
                        Text(" 93+"),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$99.99",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  Image.asset("assets/images/like (1).png"),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/like.png"),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Image.asset(
                  "assets/images/Rectangle 6 (1).png",
                  width: 50,
                ),
                title: const Text(
                  "Dogmie jagong tutung",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/like 1.png"),
                        const Text(" 999+ |  "),
                        Image.asset("assets/images/like 2.png"),
                        Text(" 93+"),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "\$99.99",
                          style: TextStyle(
                            color: green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  Image.asset("assets/images/like (1).png"),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/like.png"),
                ]),
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                height: 50,
                width: 354,
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: orang, borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
