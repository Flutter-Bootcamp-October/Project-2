import 'package:flutter/material.dart';
import 'package:project2/extentions/size_extention.dart';

class NearMeColumn extends StatelessWidget {
  const NearMeColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.heightSize() * .2,
                width: context.widthSize() * .35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Rectangle 6.png",
                      ),
                      fit: BoxFit.contain,
                      alignment: AlignmentDirectional.topStart),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 16),
                  width: context.widthSize() * .4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dapur Ijah Restaurant",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 25,
                        child: ListTile(
                          iconColor: Color(0xFF34495E),
                          contentPadding: EdgeInsets.symmetric(horizontal: 0),
                          horizontalTitleGap: 4,
                          leading: Icon(Icons.location_pin, size: 20),
                          title: Text(
                            "13 th Street, 46 W 12th St, NY",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF34495E)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                        child: ListTile(
                          iconColor: Color(0xFF34495E),
                          contentPadding: EdgeInsets.symmetric(horizontal: 0),
                          horizontalTitleGap: 4,
                          leading: Icon(Icons.watch_later_outlined, size: 20),
                          title: Text(
                            "3 min - 1.1 km",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF34495E)),
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ...List.generate(
                                5,
                                (index) => const Icon(
                                      Icons.star,
                                      color: Color(0xFFFCBF07),
                                      size: 18,
                                    ))
                          ]),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 10);
      },
    );
  }
}
