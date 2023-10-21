import 'package:flutter/material.dart';

class NearMeMenu extends StatelessWidget {
  const NearMeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(height: 24);
      },
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Row(children: [
          Image.asset(
            "assets/Images/menu.png",
            width: 100,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Dapur Ijah Restaurant",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: Icon(
                          Icons.location_on,
                          color: Color(0xff34495E),
                          size: 16,
                        ),
                      ),
                      Text(
                        "13 th Street, 46 W 12th, St, NY ",
                        style: TextStyle(color: Color(0xff34495E)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: Icon(
                          Icons.access_time_outlined,
                          color: Color(0xff34495E),
                          size: 16,
                        ),
                      ),
                      Text(
                        "3 min-1.1 km",
                        style: TextStyle(
                          color: Color(0xff34495E),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_rounded,
                      color: Color(0xffFFC107),
                      size: 16,
                    ),
                    Icon(Icons.star_rate_rounded,
                        color: Color(0xffFFC107), size: 16),
                    Icon(Icons.star_rate_rounded,
                        color: Color(0xffFFC107), size: 16),
                    Icon(Icons.star_rate_rounded,
                        color: Color(0xffFFC107), size: 16),
                    Icon(Icons.star_rate_rounded,
                        color: Color(0xffFFC107), size: 16),
                  ],
                )
              ],
            ),
          )
        ]);
      },
    );
  }
}
