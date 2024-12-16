import 'package:flutter/material.dart';
import 'package:mcp_calculator/screens/simple_calculator.dart';
import 'package:mcp_calculator/services/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paamy Calculator',
      darkTheme: Appthemedata.darkMode,
      theme: Appthemedata.lightMode,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {"/": (context) => SimpleCalculator(toggleTheme: toggleTheme)},
    );
  }
}
