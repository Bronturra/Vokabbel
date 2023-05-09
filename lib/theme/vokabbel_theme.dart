import 'package:flutter/material.dart';

final ThemeData vokabbelTheme = ThemeData(
  fontFamily: "Roboto",
  scaffoldBackgroundColor: Colors.grey[300],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[300],
    foregroundColor: Colors.indigoAccent,
    elevation: 0.0,
    centerTitle: true,
    titleTextStyle: const TextStyle(
      color: Colors.indigoAccent,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Roboto",
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.indigoAccent,
      minimumSize: const Size(250.0, 60.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      textStyle: const TextStyle(
        fontSize: 16.0,
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.indigoAccent,
  ),
);
