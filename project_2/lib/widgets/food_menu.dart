import 'package:flutter/material.dart';

class FoodReview extends StatefulWidget {
  const FoodReview({
    super.key,
  });

  @override
  State<FoodReview> createState() => _FoodReviewState();
}

class _FoodReviewState extends State<FoodReview> {
  Color colors = Colors.orange;
  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset("assets\\Rectangle 6.png"),
        title: const Text("dogmie jagong tutung"),
        subtitle: const Column(
          children: [
            Row(
              children: [
                Icon(Icons.thumb_up_alt_outlined),
                Text(" 999+ | "),
                Icon(Icons.thumb_down_alt_outlined),
                Text(" 93+")
              ],
            ),
            Row(
              children: [
                Text(
                  "99.99 ",
                  style: TextStyle(fontSize: 14, color: Colors.green),
                )
              ],
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                Icons.thumb_down_alt_outlined,
                color: color,
              ),
              onPressed: () {
                if (color == Colors.orange) {
                  color = Colors.grey;
                } else {
                  color = Colors.orange;
                }
                setState(() {});
              },
            ),
            IconButton(
              icon: Icon(
                Icons.thumb_up_alt_outlined,
                color: colors,
              ),
              onPressed: () {
                if (colors == Colors.grey) {
                  colors = Colors.orange;
                } else {
                  colors = Colors.grey;
                }
                setState(() {});
              },
            ),
          ],
        ));
  }
}
