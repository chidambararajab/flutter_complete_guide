import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 90},
        {'text': 'White', 'score': 100},
        {'text': 'Blue', 'score': 90},
        {'text': 'Yellow', 'score': 100}
      ]
    },
    {
      'questionText': 'What\'s your favorite foods?',
      'answers': [
        {'text': 'Biriyani', 'score': 100},
        {'text': 'Roti', 'score': 90},
        {'text': 'Ramen', 'score': 100},
        {'text': 'Osirikoo', 'score': 90}
      ]
    },
    {
      'questionText': 'What\'s your favorite anime?',
      'answers': [
        {'text': 'Naruto', 'score': 100},
        {'text': 'One Piece', 'score': 90},
        {'text': 'My hero academea', 'score': 70},
        {'text': 'Hippo no makanauchi', 'score': 50}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: (_questionIndex < _questions.length)
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion,
            )
          : Result(_totalScore),
    ));
  }
}
