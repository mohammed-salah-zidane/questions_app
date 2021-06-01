import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _scoreResult;
  final Function _resetHandler;

  Result(this._scoreResult, this._resetHandler);

  String get _resultPhrase {
    String resultText;
    if (_scoreResult <= 8) {
      resultText = 'You are awosome and innocent';
    } else if (_scoreResult <= 12) {
      resultText = 'Pretty likable!';
    } else if (_scoreResult <= 16) {
      resultText = 'You are... strange?';
    } else {
      resultText = 'You are so bad';
    }
    print(_scoreResult);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            _resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: () {
              _resetHandler();
            },
            child: Text("Reset Quiz!"),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
