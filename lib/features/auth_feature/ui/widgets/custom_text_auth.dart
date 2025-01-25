import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    required this.top,
    required this.left,
    required this.color,
  });

  final String text;
  final FontWeight? fontWeight;
  final double fontSize;
  final double top;
  final double left;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
          color: color,
        ),
      ),
    );
  }
}
