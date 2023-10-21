import 'package:first/pages.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int current = 1;
  Color screencolor = Color.fromARGB(255, 223, 100, 100);
  String name = "";
int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      body:
      
    Localpage()
    
    
      
    );
  }
}

