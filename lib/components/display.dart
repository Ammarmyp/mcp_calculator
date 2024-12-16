import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String? value;

  const Display({
    super.key,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(
              value!,
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
