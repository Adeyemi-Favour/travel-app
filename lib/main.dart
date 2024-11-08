import 'package:flutter/material.dart';

import 'mainApp.dart';

void main() {
  runApp(travelApp());
}

class travelApp extends StatelessWidget {
  const travelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel App",
      theme: ThemeData(
          appBarTheme: AppBarTheme(centerTitle: true),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(),
          textTheme: TextTheme(
            bodyMedium: TextStyle(color: Colors.black),
          )),
      home: mainApp(),
    );
  }
}
