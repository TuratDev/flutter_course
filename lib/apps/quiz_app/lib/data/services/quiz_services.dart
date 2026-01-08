import 'package:flutter_course/apps/quiz_app/lib/data/local_data/question_local_data.dart';

class QuizServices {
  int _index = 0;

  // учурдагы суроону алуу
  String getQuestion() {
    if (_index < QuestionLocalData.questionsAnswers.length) {
      return QuestionLocalData.questionsAnswers[_index].suroo;
    } else {
      return 'Бүттү'; // Суроолор аягына чыкканда кайтарылуучу текст
    }
  }

  // Туура жоопту текшерүү
  bool getAnswer(bool userAnswer) {
    bool correctAnswer = QuestionLocalData.questionsAnswers[_index].joop;
    return userAnswer == correctAnswer;
  }

  // кийинки суроого өтүү
  void nextQuestion() {
    if (_index < QuestionLocalData.questionsAnswers.length) {
      _index++;
    } else {
      _index = 0; // Суроолор аягына чыкканда кайра баштапкы абалга келүү
    }
  }

  // Суроолор аягына чыкканда кайра баштапкы абалга келүү
  void reset() {
    _index = 0;
  }
}

final QuizServices quizService = QuizServices();
