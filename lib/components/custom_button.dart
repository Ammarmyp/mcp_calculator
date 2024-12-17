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
    return InkWell(
      onTap: onPressed,
      splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color:
                ["C", "="].contains(label) ? Colors.green : Colors.grey.shade50,
            // Background color
            // borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle // Rounded corners
            ),
        height: 60,
        width: 60,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: ["C", "="].contains(label) ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
