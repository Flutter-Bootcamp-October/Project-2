import 'package:bootcamp_project_2/custom_widgets/space_by_20_pixels.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodReview extends StatelessWidget {
  FoodReview(
      {super.key,
      required this.likeColor,
      required this.dislikeColor,
      required this.likeBackgroundColor,
      required this.dislikeBackgrounColor});

  Color likeColor;
  Color dislikeColor;
  Color likeBackgroundColor;
  Color dislikeBackgrounColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 80,
              width: 80,
              child: Image.asset('lib/assets/images/smaller-food.png'),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                'Dogmie jagong tutung',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/icons/like.png',
                        color: Color(0xff34495E),
                      ),
                      Text('  999+ | '),
                      Image.asset(
                        'lib/assets/icons/dislike.png',
                        color: Color(0xff34495E),
                      ),
                      Text('  93+'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 96),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: dislikeBackgrounColor,
                          ),
                          child: Image.asset(
                            'lib/assets/icons/dislike.png',
                            color: dislikeColor,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                              color: likeBackgroundColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset(
                            'lib/assets/icons/like.png',
                            color: likeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Text(
                    '\$99.99',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xff2ECC71),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            SpaceBy20Pixels(),
          ],
        ),
      ],
    );
  }
}
