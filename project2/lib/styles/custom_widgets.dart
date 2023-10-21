import 'package:flutter/material.dart';
import 'custom_colors.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 354,
        height: 50,
        decoration: BoxDecoration(
          color: gray,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 17),
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key, required this.urImage, required this.color});
  // final int sizedBox;
  final String urImage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19),
      height: 70,
      width: 70,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [Image.asset(urImage)],
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
    );
  }
}

class ContainerFood extends StatelessWidget {
  const ContainerFood(
      {super.key,
      required this.text,
      required this.color,
      required this.ulImage});
  final String text;
  final Color color;
  final String ulImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 6.5),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                text,
                style:
                    TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
              )),
          Positioned(left: 13, child: Image.asset(ulImage)),
        ],
      ),
    );
  }
}

class NearMe extends StatelessWidget {
  const NearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: -1, vertical: 4),
      leading: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 170, minHeight: 170),
        child: Image.asset(
          "assets/images/food (1).png",
          // fit: BoxFit.fill
        ),
      ),
      title: Text(
        "Dapur Ijah Restaurant",
        style: TextStyle(fontWeight: FontWeight.w900),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("assets/images/pin 1.png"),
              Text("13 th Street, 46 W 12th St, NY"),
            ],
          ),
          Row(
            children: [
              Image.asset("assets/images/clock 1.png"),
              Text(" 3 min - 1.1 km"),
            ],
          ),
          Image.asset("assets/images/star.png")
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      title: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
        size: 18,
      ),
    );
  }
}
