import 'package:bmi_calculator/views/home_screen_bmi.dart';
import 'package:flutter/material.dart';

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
