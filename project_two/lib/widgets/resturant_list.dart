import 'package:flutter/material.dart';
import 'package:project_two/widgets/resturant.dart';

class ResturantList extends StatelessWidget {
  const ResturantList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Resturant(), Resturant()]);
  }
}
