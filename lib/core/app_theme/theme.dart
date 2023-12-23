import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    brightness: Brightness.light,
  );

  static final ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
}
