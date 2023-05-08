import 'package:flutter/material.dart';

final ThemeData vokabbelTheme = ThemeData(
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
      fontFamily: 'Montserrat',
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.white,
  )
);
