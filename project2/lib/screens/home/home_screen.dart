import 'package:flutter/material.dart';
import 'package:project2/extentions/size_extention.dart';
import 'package:project2/screens/authentication/components/custom_text_field.dart';
import '../../data/colors.dart';
import '../../data/icons.dart';
import '../../data/texts.dart';
import 'components/exports.dart';
import 'components/menu_row.dart';
import 'components/near_me_column.dart';
import 'components/view_all_row.dart';

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
              const CustomTextField(content: "Search"),
              const ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: Colors.black,
                  size: 28,
                ),
                horizontalTitleGap: 10,
                title: Text("9 West 46 Th Street, New York City",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 12)),
              ),
              const SizedBox(height: 10),
              IconsRow(
                  iconsList: svgIconsList,
                  colorList: colorList,
                  namesList: namesList),
              const SizedBox(height: 10),
              const Column(
                children: [
                  ViewAllRow(content: "Food Menu"),
                  MenuRow(),
                ],
              ),
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
