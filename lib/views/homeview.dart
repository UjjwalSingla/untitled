import 'package:flutter/material.dart';
import 'package:explore_the_city/views/itinerariesview.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double opacity = 0.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  void onn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Itineraries()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: opacity,
            child: Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 8),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/rioHome.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                  child: Column(
                children: [
                  Center(
                      child: Text("Welcome to",
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: (MediaQuery.of(context).size.width >
                                    MediaQuery.of(context).size.height)
                                ? MediaQuery.of(context).size.width / 35
                                : MediaQuery.of(context).size.height / 30,
                            fontWeight: FontWeight.bold,
                          ))),
                  const SizedBox(height: 10),
                  Center(
                      child: Text("Rio de Janeiro",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: (MediaQuery.of(context).size.width >
                                    MediaQuery.of(context).size.height)
                                ? MediaQuery.of(context).size.width / 35
                                : MediaQuery.of(context).size.height / 30,
                            fontWeight: FontWeight.bold,
                          ))),
                  const SizedBox(height: 10),
                  Center(
                      child: Text("Brazil",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: (MediaQuery.of(context).size.width >
                                    MediaQuery.of(context).size.height)
                                ? MediaQuery.of(context).size.width / 35
                                : MediaQuery.of(context).size.height / 30,
                            fontWeight: FontWeight.bold,
                          ))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: const EdgeInsets.all(30),
                          child: Center(
                              child: ElevatedButton(
                                  onPressed: () => onn(context),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text("Explore Itineraries",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ))))),
                ],
              )),
            )));
  }
}
