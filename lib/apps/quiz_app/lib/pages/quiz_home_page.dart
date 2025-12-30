import 'package:flutter/material.dart';

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({super.key});

  @override
  State<QuizHomePage> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 39, 39),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Quiz App, Тапшырма 7',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(
                'Кыргызстанда 6 область бар',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ), // Эки жагынан 10 пиксел боштук
                child: Column(
                  children: [
                    // Биринчи баскыч
                    SizedBox(
                      width: double.infinity, // Экрандын толук туурасы
                      height: 60,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.green, // Кыскараак жазуу ыкмасы
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text('Туура'),
                      ),
                    ),

                    const SizedBox(height: 25), // Ортодогу боштук
                    // Экинчи баскыч
                    SizedBox(
                      width: double.infinity, // Экрандын толук туурасы
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text('Ката'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
