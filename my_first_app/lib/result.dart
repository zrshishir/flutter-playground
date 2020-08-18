import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore > 5) {
      resultText = 'You did awesome and your score: ' + resultScore.toString();
    } else {
      resultText =
          'You should try again and your score: ' + resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Reset Quiz!',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
