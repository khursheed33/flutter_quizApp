import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int questionNumber;
  final String questionText;
  Question(this.questionNumber, this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.center,
      child: Text(
        '${questionNumber.toString()}' ". " '$questionText',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 26,
          color: Color(0xFFD6C9F2),
        ),
      ),
    );
  }
}
