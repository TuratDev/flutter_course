import 'package:flutter/material.dart';
import 'package:flutter_course/home_page.dart';

void main() {
  runApp(const FlutterCourse());
}

class FlutterCourse extends StatelessWidget {
  const FlutterCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Course',
      home: HomePage(),
    );
  }
}
