import 'package:flutter/material.dart';

class Appthemedata {
  static ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.cyan),
    useMaterial3: true,
  );

  static ThemeData darkMode = ThemeData.dark(
    useMaterial3: true,
  );

  static ThemeMode themeMode = ThemeMode.system;
}
