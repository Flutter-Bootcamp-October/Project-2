import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeDisLikeButton extends StatefulWidget {
  const LikeDisLikeButton({
    super.key,
  });

  @override
  State<LikeDisLikeButton> createState() => _LikeDisLikeButtonState();
}

class _LikeDisLikeButtonState extends State<LikeDisLikeButton> {
  Color orangeLike = const Color(0xFFD35400);
  Color gray = const Color(0xFFECF0F1);
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: (isPressed) ? orangeLike : gray,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {
                  isPressed = !isPressed;
                  setState(() {});
                },
                icon: SvgPicture.asset(
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    "assets/svg_icons/Vector.svg"),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: (isPressed) ? gray : orangeLike,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {
                  isPressed = !isPressed;
                  setState(() {});
                },
                icon: SvgPicture.asset(
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    "assets/svg_icons/like 2.svg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
