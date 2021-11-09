import 'question.dart';

class QuizBrain {
  // question number
  int _questionNumber = 0;

  // Create a list question bank
  // Question(questionText, questionAnswer)
  List<Question> _questionBank = [
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
    Question('Hug dep trai', true),
    Question('a slug\'s blood is green', true),
    Question('Tit ngu', false),
  ];

  // Encapsulation
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  void resetQuestionNumber() {
    _questionNumber = 0;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    }
    return false;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
