import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen> {
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Тапшырма 1",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              // Бул контайнерди басылуучу кнопка кылып жасаган Виджет.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    receivedNumber: _counter,
                  ), // Биринчи беттеги санды кийинки бетке өткөрүү
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 195, 194, 194),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Сан: $_counter',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                child: const Text(
                  '-',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
              const SizedBox(width: 14),
              ElevatedButton(
                onPressed: _incrementCounter,

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
