import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/header.dart';

class OrderList extends StatefulWidget {
  const OrderList({
    super.key,
  });

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 160),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 24);
          },
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Image.asset("assets/Images/order.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 42),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Header(
                          title: "Dogmie jagong tutung",
                          fontsize: 12,
                          color: Color(0xff000000),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            Image.asset("assets/Images/like.png"),
                            const Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                "999+ | ",
                                style: TextStyle(color: Color(0xff34495E)),
                              ),
                            ),
                            Image.asset("assets/Images/notlike.png"),
                            const Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                "93+",
                                style: TextStyle(
                                  color: Color(0xff34495E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "\$99.99",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2ECC71),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 20,
                        height: 20,
                        color: const Color(0xffECF0F1),
                      ),
                    ),
                    Image.asset("assets/Images/notlike.png"),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 20,
                        height: 20,
                        color: const Color(0xffECF0F1),
                      ),
                    ),
                    Image.asset("assets/Images/like.png"),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
