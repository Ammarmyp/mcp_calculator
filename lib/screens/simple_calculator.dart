import 'package:flutter/material.dart';
import 'package:mcp_calculator/components/custom_button.dart';
import 'package:mcp_calculator/components/display.dart';

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paamy Calc"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Display(
              value: "0",
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CustomButton(
                label: "C",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "()",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "%",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "÷",
                onPressed: () {},
              ),
            ]),
            const SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CustomButton(
                label: "7",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "8",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "9",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "X",
                onPressed: () {},
              ),
            ]),
            const SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CustomButton(
                label: "4",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "5",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "6",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "-",
                onPressed: () {},
              ),
            ]),
            const SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CustomButton(
                label: "1",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "2",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "3",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "+",
                onPressed: () {},
              ),
            ]),
            const SizedBox(
              height: 40,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CustomButton(
                label: "+/-",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "0",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: ".",
                onPressed: () {},
              ),
              const SizedBox(
                width: 5,
              ),
              CustomButton(
                label: "=",
                onPressed: () {},
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
