import 'package:flutter/material.dart';

AppBarTheme appbartheme = const AppBarTheme(
  backgroundColor: Colors.green,
  shadowColor: Colors.transparent,
  elevation: 0.0,
  centerTitle: false,
  scrolledUnderElevation: 10.0,
  toolbarHeight: 48.0,
  titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
  ),
  // round corners
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
  ),
  // icons button theme
  actionsIconTheme: IconThemeData(color: Colors.white, size: 16.0),
);
