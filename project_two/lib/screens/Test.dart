import 'package:flutter/material.dart';
import 'package:project_two/widgets/food_menu_list.dart';
import 'package:project_two/widgets/menu_item.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: MenuList()),
    );
  }
}
