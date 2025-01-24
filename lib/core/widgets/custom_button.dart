import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.color,
    required this.onTap,
  });

  final String text;
  final double width;
  final double height;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        width: width,
        height: height,
        child: Center(child: Text('next')),
      ),
    );
  }
}
