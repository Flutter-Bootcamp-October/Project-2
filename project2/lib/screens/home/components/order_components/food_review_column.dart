import 'package:flutter/material.dart';
import 'package:project2/extentions/size_extention.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'like_dislike_button.dart';

class FoodReviewColumn extends StatelessWidget {
  const FoodReviewColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: context.heightSize() * .13,
                width: context.widthSize() * .25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Rectangle 6.png",
                      ),
                      fit: BoxFit.scaleDown,
                      alignment: AlignmentDirectional.centerStart),
                ),
              ),
              SizedBox(
                width: context.widthSize() * .65,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Dogmie jagong tutung",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 75,
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              horizontalTitleGap: -12,
                              leading: IconButton(
                                highlightColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                                icon: SvgPicture.asset(
                                    "assets/svg_icons/Vector.svg",
                                    fit: BoxFit.contain),
                                onPressed: () {},
                              ),
                              title: const Text("999+"),
                            ),
                          ),
                          const Text("|", style: TextStyle(fontSize: 20)),
                          SizedBox(
                            width: 75,
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              horizontalTitleGap: -28,
                              leading: IconButton(
                                highlightColor: Colors.transparent,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.zero,
                                icon: SvgPicture.asset(
                                    "assets/svg_icons/like 2.svg",
                                    fit: BoxFit.contain),
                                onPressed: () {},
                              ),
                              title: const Text("93+"),
                            ),
                          ),
                          const Expanded(
                            child: LikeDisLikeButton(),
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            "\$99.99",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF2ECC71)),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 25);
      },
    );
  }
}
