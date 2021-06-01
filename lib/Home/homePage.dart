import 'package:flutter/material.dart';
import 'package:questions_app/Quiz/quiz.dart';
import 'package:questions_app/Managers/quizManager.dart';
import 'package:questions_app/QuizResult/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  QuizManager _quizManager = QuizManager();

  void _answerQuestion(int score) {
    setState(() {
      _quizManager.answerQuestion(score);
    });
  }

  void _resetQuiz() {
    setState(() {
      _quizManager.resetQuiz();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
        backgroundColor: Colors.purple,
      ),
      body: _quizManager.isQuizFinished
          ? Result(_quizManager.totalScore, _resetQuiz)
          : Quiz(_quizManager.currentQuestion,
              _quizManager.currentQuestionAnswers, _answerQuestion),
    );
  }
}
