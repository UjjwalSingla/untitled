import 'package:flutter/material.dart';
import 'package:untitled/views/activityview.dart';

class Itineraries extends StatelessWidget {
  const Itineraries({super.key});
  void onn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Activity()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Select Itinerary",
              style: TextStyle(color: Colors.white)),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: (MediaQuery.of(context).size.width >
                      MediaQuery.of(context).size.height)
                  ? (MediaQuery.of(context).size.width +
                          AppBar().preferredSize.height * 2.1) /
                      MediaQuery.of(context).size.height
                  : (MediaQuery.of(context).size.width +
                          AppBar().preferredSize.height * 0.96) /
                      MediaQuery.of(context).size.height,
              shrinkWrap: true,
              children: <Widget>[
                GestureDetector(
                  onTap: () => onn(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/HistoryRio.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                          color: Colors.black45,
                          child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Historical Things",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => onn(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/handgliding.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                          color: Colors.black45,
                          child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Adventure Activities",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => onn(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/RioFood.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                          color: Colors.black45,
                          child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Culinary Seeker",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => onn(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/Night.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                          color: Colors.black45,
                          child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Night Life",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ),
                )
              ]),
        )));
  }
}
