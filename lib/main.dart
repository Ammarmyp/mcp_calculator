import 'package:flutter/material.dart';
import 'package:mcp_calculator/screens/simple_calculator.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.cyan),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {"/": (context) => const SimpleCalculator()},
    );
  }
}
