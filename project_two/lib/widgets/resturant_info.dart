import 'package:flutter/material.dart';

class ResturantInfo extends StatelessWidget {
  const ResturantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset('lib/assets/images/resturant.png'),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Dapur Ijah Restaurant',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              const SizedBox(height: 10),
              const Row(children: [
                Icon(size: 12, color: Colors.black, Icons.location_on),
                Text(' 13 th Street, 46 W 12th St, NY',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 12))
              ]),
              const SizedBox(height: 5),
              const Row(children: [
                Icon(size: 12, color: Colors.black, Icons.access_time),
                Text(' 3 min - 1.1 km',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 12))
              ]),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Image.asset('lib/assets/icons/stars.png'),
              )
            ]),
          )
        ],
      ),
    );
  }
}
