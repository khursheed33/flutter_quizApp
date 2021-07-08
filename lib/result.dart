import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);
  String get resultPhrase {
    String resultText = "Quiz Finished!";

    if (totalScore >= 10) {
      resultText = "You're very talented";
    } else if (totalScore >= 7) {
      resultText = "You're pretty good";
    } else if (totalScore >= 4) {
      resultText = "Keep reading and focusing!";
    } else {
      resultText = "You're poor! gain more knowledge:(";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.done_outline,
            size: 55,
            color: Theme.of(context).backgroundColor,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Your have scored : $totalScore / 11, $resultPhrase",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton.icon(
            textColor: Colors.lightBlue[100],
            onPressed: resetHandler,
            label: Text(
              "Restart quiz!",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Overpass',
                fontWeight: FontWeight.w500,
              ),
            ),
            icon: Icon(
              Icons.restore,
              size: 25,
              color: Colors.lightBlue[100],
            ),
          )
        ],
      ),
    );
  }
}
