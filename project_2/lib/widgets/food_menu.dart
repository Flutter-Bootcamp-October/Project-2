import 'package:flutter/material.dart';

class FoodReview extends StatelessWidget {
  FoodReview({
    super.key,
  });
Color color =Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets\\Rectangle 6.png"),
           const Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "dogmie jagong tutung",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  Text(" 999+ | "),
                  Icon(Icons.thumb_down_alt_outlined),
                  Text(" 93+")
                ],
              ),
              Text(
                "99.99 ",
                style: TextStyle(fontSize: 14, color: Colors.green),
              )
            ],
          ),
           Container( color: color,
             child: IconButton(onPressed: (){
               if (color== Colors.orange){
                 color =Colors.white70;
               }else{ color= Colors.orange;}
               return;
             }, icon:const Icon(Icons.thumb_down_off_alt_sharp)),
           ),
           const Icon(Icons.thumb_up_alt_outlined)
        ],
      ),
    );
  }
}
