import 'dart:math' as math;
import 'package:flutter/material.dart';

class DiceHomePage extends StatefulWidget {
  const DiceHomePage({super.key});

  @override
  State<DiceHomePage> createState() => _DiceHomePage();
}

class _DiceHomePage extends State<DiceHomePage> {
  int _leftDice = 1;
  int _rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Кубиктер
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  transitionBuilder: (child, animation) {
                    return RotationTransition(
                      turns: animation,
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: InkWell(
                    onTap: yrgyt,
                    child: Image.asset(
                      'assets/images/dice_$_leftDice.png',
                      key: ValueKey(_leftDice),
                      color: Colors.white,
                      height: 140,
                      width: 140,
                    ),
                  ),
                ),

                const SizedBox(width: 20),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  transitionBuilder: (child, animation) {
                    return RotationTransition(
                      turns: animation,
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: InkWell(
                    onTap: yrgyt,
                    child: Image.asset(
                      'assets/images/dice_$_rightDice.png',
                      key: ValueKey(_leftDice),
                      color: Colors.white,
                      height: 140,
                      width: 140,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            /// Баскыч
            ElevatedButton(
              onPressed: yrgyt,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
              child: const Text(
                'Кубикти ыргыт',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void yrgyt() {
    final random = math.Random();

    setState(() {
      _leftDice = random.nextInt(6) + 1;
      _rightDice = random.nextInt(6) + 1;
    });

    debugPrint('solDice ===> $_leftDice');
    debugPrint('onlDice ===> $_rightDice');
  }
}
