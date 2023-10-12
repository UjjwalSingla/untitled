import 'package:flutter/material.dart';
import 'package:untitled/views/itinerariesview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  void onn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Itineraries()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(100.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/rioHome.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Column(
        children: [
          const Center(
              child: Text("Welcome to",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ))),
          const Center(
              child: Text("Rio de Janeiro",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ))),
          const Center(
              child: Text("Brazil",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ))),
          Container(
              width: 200,
              height: 70,
              margin: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () => onn(context),
                child: const Text("Explore Itineraries",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              )),
        ],
      )),
    ));
  }
}
