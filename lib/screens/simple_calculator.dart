import 'package:flutter/material.dart';
import 'package:mcp_calculator/components/custom_button.dart';

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paamy Calc"),
      ),
      body: const Center(
        child: Column(
          children: [
            CustomButton(),
            SizedBox(
              height: 20,
            ),
            Text("data")
          ],
        ),
      ),
    );
  }
}
