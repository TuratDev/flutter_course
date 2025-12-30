import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Сан: $_counter'),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.blue),
                  onPressed: _incrementCounter,
                  child: Text('+'),
                ),
                const SizedBox(height: 10, width: 10),

                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.blue),
                  onPressed: _decrementCounter,
                  child: Text('--'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
