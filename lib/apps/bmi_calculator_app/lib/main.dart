import 'package:flutter/material.dart';
import 'views/home_screen_bmi.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext contex) {
    return const MaterialApp(home: HomeScreenBmi());
  }
}
