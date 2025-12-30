import 'package:flutter/material.dart';

class HomeScreenBmi extends StatefulWidget {
  const HomeScreenBmi({super.key});

  @override
  State<HomeScreenBmi> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeScreenBmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator, Тапшырма 8', textAlign: TextAlign.center),
      ),
    );
  }
}
