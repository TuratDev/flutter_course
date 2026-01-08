import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  final String text;
  final Color tus;
  final VoidCallback onPressed;

  const CostumButton({
    super.key,
    required this.text,
    required this.tus,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: tus,
          foregroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
    );
  }
}
