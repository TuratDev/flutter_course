import 'package:flutter/material.dart';
import 'ui/xylophone_ui.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: XylophoneUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
