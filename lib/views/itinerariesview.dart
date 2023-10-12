import 'package:flutter/material.dart';

class Itineraries extends StatelessWidget {
  const Itineraries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Itinerary",
            style: TextStyle(color: Colors.white)),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 0.53,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    "assets/hanggliding.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              child: Center(child: Text('Item 1')),
            ),
            Container(
              color: Colors.green,
              child: Center(child: Text('Item 1')),
            ),
            Container(
              color: Colors.yellow,
              child: Center(child: Text('Item 1')),
            ),
          ]),
    );
  }
}
