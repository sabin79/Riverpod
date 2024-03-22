import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  final Color? color;
  final Function()? onTap;

  const ToggleButton({super.key, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(25),
        child: const Center(
          child: Text("Tap"),
        ),
      ),
    );
  }
}
