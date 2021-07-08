import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerHandler;
  Answer(this.answerHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        padding: EdgeInsets.only(top: 5, bottom: 5, right: 20),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(50),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[900],
                blurRadius: 7.0,
                offset: Offset(2, 2),
              ),
              BoxShadow(
                color: Colors.grey[900],
                blurRadius: 2.0,
                offset: Offset(-2, 1),
              )
            ]),
        child: FlatButton(
          textColor: Color(0xFFD3B3F2),
          onPressed: answerHandler,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                answerText,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
