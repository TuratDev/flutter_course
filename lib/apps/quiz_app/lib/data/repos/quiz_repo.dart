import 'package:flutter_course/apps/quiz_app/lib/data/services/quiz_services.dart';

class QuizRepo {
  String getQuestion() => quizService.getQuestion();
  void nextQuestion() => quizService.nextQuestion();
  bool getAnswer(bool userAnswer) => quizService.getAnswer(true);
  void reset() => quizService.reset();
}

final QuizRepo quizRepository = QuizRepo();
