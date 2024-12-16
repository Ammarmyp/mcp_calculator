import 'package:flutter/material.dart';
import 'package:mcp_calculator/screens/simple_calculator.dart';
import 'package:mcp_calculator/services/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paamy Calculator',
      darkTheme: Appthemedata.darkMode,
      theme: Appthemedata.lightMode,
      themeMode: Appthemedata.themeMode,
      debugShowCheckedModeBanner: false,
      routes: {"/": (context) => const SimpleCalculator()},
    );
  }
}
