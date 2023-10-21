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
                      alignment: AlignmentDirectional.centerStart),
                ),
              ),
              SizedBox(
                width: context.widthSize() * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Dapur Ijah Restaurant",
                      style: TextStyle(
                          fontFamily: "Poppins", fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 30,
                      child: ListTile(
                        leading: Icon(Icons.location_pin, size: 20),
                        title: Text(
                          "13 th Street, 46 W 12th St, NY",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                      child: ListTile(
                        leading: Icon(Icons.watch_later_outlined, size: 20),
                        title: Text(
                          "3 min - 1.1 km",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
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
                    ),
                  ],
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
