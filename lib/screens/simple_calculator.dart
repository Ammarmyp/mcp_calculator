import 'package:flutter/material.dart';
import 'package:mcp_calculator/components/custom_button.dart';

class SimpleCalculator extends StatelessWidget {
  final List<String> buttons = [
    'C',
    '()',
    '%',
    "÷",
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '+/-',
    '0',
    '=',
    '+',
  ];

  SimpleCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paamy Calc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4 buttons per row
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return CustomButton(
                    label: buttons[index],
                    // bgColor: _getButtonColor(buttons[index]),
                    textColor: Colors.white,
                    onPressed: () {
                      // Add your button logic here
                      print('Pressed: ${buttons[index]}');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // // Get button color based on its type
  // Color _getButtonColor(String label) {
  //   if (label == 'C') return Colors.red;
  //   if (label == '=' || label == '+' || label == '-' || label == '*' || label == '/') {
  //     return Colors.orange;
  //   }
  //   return Colors.grey[850]!;
  // }
}
