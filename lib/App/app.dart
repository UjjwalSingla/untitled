import 'package:flutter/material.dart';
import 'package:untitled/views/homeview.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Explore the City",
      home: HomeView(),
    );
  }
}
