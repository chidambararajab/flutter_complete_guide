import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswerHandler;
  final String answerText;

  Answer(this.selectAnswerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.blue[50],
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectAnswerHandler,
      ),
    );
  }
}
