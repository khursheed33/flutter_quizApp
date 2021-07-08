import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final questionNumber;
  final int questionIndex;
  final Function answerHandler;
  Quiz({
    @required this.answerHandler,
    @required this.questionIndex,
    @required this.questionNumber,
    @required this.questions,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questionNumber[questionIndex],
              questions[questionIndex]['question']),
          ...(questions[questionIndex]['answer'] as List<Map<String, dynamic>>)
              .map((answer) {
            return Answer(() => answerHandler(answer['score']), answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
