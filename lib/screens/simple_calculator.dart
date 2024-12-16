import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:mcp_calculator/components/custom_button.dart';
import 'package:mcp_calculator/components/display.dart';

class SimpleCalculator extends StatefulWidget {
  final VoidCallback toggleTheme;
  const SimpleCalculator({super.key, required this.toggleTheme});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String expression = '0';
  String result = '0';
  bool isScientificMode = false;

  void onButtonPressed(String text) {
    setState(() {
      if (text == 'C') {
        expression = '0';
        result = '0';
      } else if (text == '=') {
        try {
          Parser p = Parser();
          Expression exp =
              p.parse(expression.replaceAll('×', '*').replaceAll('÷', '/'));
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = 'Error';
        }
      } else {
        if (expression == '0') {
          expression = text;
        } else {
          expression += text;
        }
      }
    });
  }

  void toggleScientificMode() {
    setState(() {
      isScientificMode = !isScientificMode;
    });
  }

  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paamy Calc"),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_3_rounded),
            onPressed: widget.toggleTheme,
          ),
          // IconButton(onPressed: () {}, icon: const Icon(Icons.edit_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Display(
              value: result,
            ),
            const SizedBox(
              height: 15,
            ),
            Display(value: expression),
            const SizedBox(height: 35),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: toggleScientificMode,
                  child: Text(isScientificMode ? 'Basic' : 'Scientific'),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (isScientificMode) _buildScientificKeyboard(),
                    basicCalculator(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget basicCalculator() {
    return Column(
      children: [
        buildButtonRow(['C', '()', '%', '÷']),
        const SizedBox(height: 30),
        buildButtonRow(['7', '8', '9', '×']),
        const SizedBox(height: 30),
        buildButtonRow(['4', '5', '6', '-']),
        const SizedBox(height: 30),
        buildButtonRow(['1', '2', '3', '+']),
        const SizedBox(height: 30),
        buildButtonRow(['0', '.', '=']),
      ],
    );
  }

  Widget _buildScientificKeyboard() {
    return Column(
      children: [
        // First Row of Scientific Buttons
        buildButtonRow(['sin', 'cos', 'tan', 'π']),

        const SizedBox(height: 20),

        buildButtonRow(['√', '^', 'ln', 'log']),

        const SizedBox(height: 20),

        buildButtonRow(['(', ')', '%', 'e']),
      ],
    );
  }

  Widget buildButtonRow(List<String> buttons) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons.map((button) {
        return CustomButton(
          label: button,
          onPressed: () => onButtonPressed(button),
        );
      }).toList(),
    );
  }
}
