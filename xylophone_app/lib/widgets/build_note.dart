import 'package:flutter/material.dart';

class BuildNote extends StatelessWidget {
  final Color color;
  final String noteText;
  final String noteNumber;

  const BuildNote({
    super.key,
    required this.color,
    required this.noteText,
    required this.noteNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      color: color,
      child: TextButton(onPressed: () {}, child: Text(noteText)),
    );
  }
}
