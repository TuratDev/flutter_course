import 'package:flutter/material.dart';
import 'package:flutter_course/apps/quiz_app/lib/data/repos/quiz_repo.dart';
import 'package:flutter_course/apps/quiz_app/lib/widgets/costum_button.dart';
import 'package:flutter_course/apps/quiz_app/lib/widgets/icon_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({super.key});

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  late String question;
  bool isFinished = false; // Оюндун бүткөнүн белгилөөчү өзгөрмө
  List<Widget> icons = [];

  @override
  void initState() {
    super.initState();
    question = quizRepository.getQuestion();
  }

  void userAnswered(bool userAnswer) {
    bool correctAnswer = quizRepository.getAnswer(userAnswer);
    setState(() {
      // Иконкаларды кошуу
      if (userAnswer == correctAnswer) {
        icons.add(
          const IconWidget(
            icons: FontAwesomeIcons.check,
            color: Color(0xff4EA052),
          ),
        );
      } else {
        icons.add(
          const IconWidget(
            icons: FontAwesomeIcons.xmark,
            color: Color(0xffF54335),
          ),
        );
      }

      quizRepository.nextQuestion();
      question = quizRepository.getQuestion();

      if (question == 'Buttu') {
        isFinished = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212121),
      appBar: AppBar(
        title: const Text('Тапшырма 07'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              isFinished ? "Оюн аяктады!" : question,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 32.0, color: Colors.white),
            ),
            const Spacer(),
            if (isFinished)
              CostumButton(
                text: 'Кайра баштоо',
                tus: Colors.blue,
                onPressed: () {
                  setState(() {
                    quizRepository.reset();
                    question = quizRepository.getQuestion();
                    isFinished = false;
                    icons = [];
                  });
                },
              )
            else
              Column(
                children: [
                  CostumButton(
                    text: 'Туура',
                    tus: const Color(0xff4EA052),
                    onPressed: () => userAnswered(true),
                  ),
                  const SizedBox(height: 20.0),
                  CostumButton(
                    text: 'Туура эмес',
                    tus: const Color(0xffF54335),
                    onPressed: () => userAnswered(false),
                  ),
                ],
              ),
            const SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: icons),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
