import 'package:flutter/material.dart';

class QuizManager {
  var _questionIndex = 0;
  var totalScore = 0;

  final questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Salah', 'score': 1},
        {'text': 'Tawfic', 'score': 1},
        {'text': 'Kareem', 'score': 1},
        {'text': 'Shabaan', 'score': 1},
      ],
    },
  ];

  bool get isQuizFinished {
    return (_questionIndex >= questions.length);
  }

  String get currentQuestion {
    return questions[_questionIndex]['questionText'] as String;
  }

  List<Map<String, Object>> get currentQuestionAnswers {
    return questions[_questionIndex]['answers'] as List<Map<String, Object>>;
  }

  void answerQuestion(int score) {
    totalScore += score;
    _questionIndex += 1;
  }

  void resetQuiz() {
    totalScore = 0;
    _questionIndex = 0;
  }
}
