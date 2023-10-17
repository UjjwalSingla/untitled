import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _Activity();
}

class _Activity extends State<Activity> {
  Map<String, dynamic>? activityData;
  String imgSrc = "handgliding.jpg";
  String title = "Signal Hill";
  String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final data = await rootBundle.loadString("assets/activities.json");
    activityData = jsonDecode(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          if (activityData != null) {
            return Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset((activityData?["activities"][index]
                                ["imgSrc"])
                            .toString()),
                        const SizedBox(height: 10),
                        Text(
                            (activityData?["activities"][index]["title"])
                                .toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text((activityData?["activities"][index]
                                  ["description"])
                              .toString()),
                        )
                      ],
                    )));
          }
        },
      ),
    );
  }
}
