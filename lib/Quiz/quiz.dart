import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> answers;
  final String question;
  final Function onSelectAnswer;

  Quiz(
    this.question,
    this.answers,
    this.onSelectAnswer,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question,
        ),
        ...answers.map((answer) {
          return Answer(
            answer['text'] as String,
            () {
              print("score ${answer['score']}");
              onSelectAnswer(answer['score']);
            },
          );
        }).toList()
      ],
    );
  }
}
