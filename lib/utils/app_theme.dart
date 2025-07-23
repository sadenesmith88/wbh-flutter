import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() => ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      );

  static ThemeData dark() => ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.dark,
      );
} 