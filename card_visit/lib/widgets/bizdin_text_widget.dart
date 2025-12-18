import 'package:flutter/material.dart';

class BiztinTextWidget extends StatelessWidget {
  const BiztinTextWidget({
    super.key,
    required this.text,
    required this.fontFamily,
    required this.fontSize,
    required this.color,
  });

  final String text;
  final String fontFamily;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
