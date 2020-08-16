// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_first_app/result.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'what\'s your favourite color?',
        'answers': [
          {'text': 'black', 'score': 5},
          {'text': 'white', 'score': 4},
          {'text': 'blue', 'score': 3},
          {'text': 'purple', 'score': 2},
        ],
      },
      {
        'questionText': 'what\'s your favourite animal?',
        'answers': [
          {'text': 'goat', 'score': 5},
          {'text': 'dog', 'score': 4},
          {'text': 'cow', 'score': 3},
          {'text': 'dear', 'score': 2},
        ],
      },
      {
        'questionText': 'who is your favourite teacher?',
        'answers': [
          {'text': 'zia', 'score': 5},
          {'text': 'shishir', 'score': 4},
          {'text': 'rahman', 'score': 3},
          {'text': 'me', 'score': 2},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
