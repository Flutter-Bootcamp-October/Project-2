import 'package:flutter/material.dart';

class NearMe extends StatelessWidget {
  const NearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset("assets\\Rectangle 6.png"),
        title: const Text("Daour Ijah Restaurant"),
        subtitle: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.location_on),
                Text("13 th Street, 46 W 12th St,NY")
              ],
            ),
            const Row(
              children: [Icon(Icons.access_time_sharp), Text("3 min-1.1km")],
            ),
            Row(
              children: _starsRepeat(),
            )
          ],
        ));
  }

  List<Icon> _starsRepeat() {
    List<Icon> star = [];
    for (var i = 0; i < 5; i++) {
      star.add(const Icon(
        Icons.star,
        color: Color.fromARGB(255, 245, 222, 18),
      ));
    }
    return star;
  }
}
