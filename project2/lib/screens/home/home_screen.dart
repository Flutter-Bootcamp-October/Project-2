import 'package:flutter/material.dart';

import 'components/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 45),
              const SearchTextField(content: "Search"),
              const ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: Colors.black,
                  size: 28,
                ),
                horizontalTitleGap: 10,
                title: Text(
                  "9 West 46 Th Street, New York City",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              ),
              const SizedBox(height: 10),
              IconsRow(
                  iconsList: svgIconsList,
                  colorList: colorList,
                  namesList: namesList),
              const SizedBox(height: 10),
              const ViewAllRow(content: "Food Menu"),
              const MenuRow(),
              const SizedBox(height: 15),
              const ViewAllRow(content: "Near Me"),
              const SizedBox(height: 10),
              const NearMeColumn(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
