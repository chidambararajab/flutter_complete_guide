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
      'answers': ['Black', 'White', 'Blue', 'Yellow']
    },
    {
      'questionText': 'What\'s your favorite foods?',
      'answers': ['Biriyani', 'Roti', 'Ramen', 'Osirikoo']
    },
    {
      'questionText': 'What\'s your favorite anime?',
      'answers': [
        'Naruto',
        'One Piece',
        'My hero academea',
        'Hippo no makanauchi'
      ]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
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
          : Result(),
    ));
  }
}
