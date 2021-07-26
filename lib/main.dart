import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
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
    if (_questionIndex < questions.length) {
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
      body: (_questionIndex < questions.length)
          ? Column(
              children: [
                Question(
                  questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
          : Center(
              child: Text('Thanks, your favorits are selected!'),
            ),
    ));
  }
}
