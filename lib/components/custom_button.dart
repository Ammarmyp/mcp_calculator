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
      splashColor: Colors.white.withOpacity(0.2),
      borderRadius: BorderRadius.circular(30),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color:
                ["C", "="].contains(label) ? Colors.amber[700] : Colors.black,
            // Background color
            // borderRadius: BorderRadius.circular(10),
            shape: BoxShape.circle // Rounded corners
            ),
        height: 60,
        width: 60,
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
