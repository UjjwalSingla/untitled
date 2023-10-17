import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/views/homeview.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          scaffoldBackgroundColor: Colors.blueGrey.shade200,
          textTheme: GoogleFonts.libreBaskervilleTextTheme()),
      title: "Explore the City",
      home: const HomeView(),
    );
  }
}
