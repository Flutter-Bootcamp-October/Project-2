import 'package:flutter/material.dart';

class Resturant extends StatelessWidget {
  const Resturant({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0),
      child: Row(children: [
        Image.asset('lib/assets/images/resturant.png'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Text(
                'Dapur Ijah Restaurant',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ),
            const Row(children: [
              ImageIcon(AssetImage('lib/assets/icons/pin.png')),
              Text(
                '13 th Street, 46 W 12th St, NY',
                style: TextStyle(color: Colors.black),
              )
            ]),
            const Row(
              children: [
                ImageIcon(AssetImage('lib/assets/icons/clock.png')),
                Text('3 min - 1.1 km')
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Image.asset('lib/assets/icons/stars.png'),
            )
          ]),
        )
      ]),
    );
  }
}
