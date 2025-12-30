import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // Биринчи беттен келген санды сактоо үчүн variable
  final int receivedNumber;

  const SecondPage({super.key, required this.receivedNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Тапшырма 2",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 195, 194, 194),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "Сан $receivedNumber",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
