import 'package:flutter/material.dart';

class Appthemedata {
  static ThemeData lightMode = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
    colorScheme: ColorScheme.light(
        primary: Colors.black,
        secondary: Colors.amber,
        tertiary: Colors.grey[200]),
  );

  static ThemeData darkMode = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    colorScheme: ColorScheme.dark(
        primary: Colors.white,
        secondary: Colors.amber,
        tertiary: Colors.grey[900]),
  );

  static ThemeMode themeMode = ThemeMode.system;
}
