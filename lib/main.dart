import 'package:flutter/material.dart';
import 'package:questions_app/Core/AppLifeCycleManager.dart';
import 'package:questions_app/Home/homePage.dart';

void main() => runApp(QuestionApp());

class QuestionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLifeCycleManager(
      MaterialApp(
        title: 'Quiz',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
