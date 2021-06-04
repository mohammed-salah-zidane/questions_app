import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPress;
  Answer(this.answerText, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          onPrimary: Colors.white,
        ),
        child: Text(answerText),
        onPressed: () {
          onPress();
        },
      ),
    );
  }
}
