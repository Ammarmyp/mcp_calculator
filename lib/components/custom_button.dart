import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color? bgColor;
  final Color? textColor;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.label,
    this.bgColor,
    this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(),
        child: Text(label),
      ),
    );
  }
}
