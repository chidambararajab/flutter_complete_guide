import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite foods?',
      'What\'s your favorite place?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Column(
        children: [
          Text(
            questions[_questionIndex],
          ),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    ));
  }
}
