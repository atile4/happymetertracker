import 'package:flutter/material.dart';
import 'package:happy_meter/meter_screen.dart';
import 'package:happy_meter/backgrounds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: appbartheme,
        scaffoldBackgroundColor: const Color.fromARGB(255, 209, 209, 209),
        cardColor: const Color.fromARGB(210, 215, 215, 215),
      ),
      home: MeterScreen(),
    );
  }
}
