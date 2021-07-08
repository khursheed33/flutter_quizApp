import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _questionNumber = [];
  var _questions = const [
    {
      'question': "World Tourism Day is celebrated on-?",
      'answer': [
        {'text': 'a. September 12', 'score': 0},
        {'text': 'b. December 25', 'score': 0},
        {'text': 'c. September 29', 'score': 0},
        {'text': 'd. September 27', 'score': 1}
      ]
    },
    {
      'question': "Where is Bose Institue?",
      'answer': [
        {'text': 'a. Disapur', 'score': 0},
        {'text': 'b. New Delhi', 'score': 0},
        {'text': 'c. Kolkata', 'score': 1},
        {'text': 'd. Mumbai', 'score': 0}
      ]
    },
    {
      'question': "International Yoga Day celebrated on?",
      'answer': [
        {'text': 'a. June 21', 'score': 1},
        {'text': 'b. March 22', 'score': 0},
        {'text': 'c. April 23', 'score': 0},
        {'text': 'd. May 31', 'score': 0}
      ]
    },
    {
      'question':
          "Which famous Indian cricketer recently announced his retirement from all forms of cricket?",
      'answer': [
        {'text': 'a. Irfan Pathan', 'score': 1},
        {'text': 'b. Yusuf Pathan', 'score': 0},
        {'text': 'c. Bhuvanesh Kumar', 'score': 0},
        {'text': 'd. R Ashwin', 'score': 0}
      ]
    },
    {
      'question':
          "Which global tele-communication company’s arm has recently launched a new privacy-focused search engine called ‘OneSearch’?",
      'answer': [
        {'text': 'a. AT&T', 'score': 0},
        {'text': 'b. Verizon', 'score': 1},
        {'text': 'c. Vodafone', 'score': 0},
        {'text': 'd. China Mobile', 'score': 0}
      ]
    },
    {
      'question':
          "What is the theme of the ‘NIC TechConclave 2020’, organized by the National Informatics Centre (NIC)?",
      'answer': [
        {'text': 'a. Technologies for NextGen Governance', 'score': 1},
        {'text': 'b. Artificial Intelligence For All', 'score': 0},
        {'text': 'c. Machine Learning For All', 'score': 0},
        {'text': 'd. AI for e-Governance', 'score': 0}
      ]
    },
    {
      'question':
          "Which Indian state is set to use facial recognition software for its local body elections, for the first time in the country?",
      'answer': [
        {'text': 'a. Tamil Nadu', 'score': 0},
        {'text': 'c. Kerala', 'score': 0},
        {'text': 'b. Telangana', 'score': 1},
        {'text': 'd. Andhra Pradesh', 'score': 0}
      ]
    },
    {
      'question':
          "Which global firm has developed a new Artificial Intelligence (AI) model to protect an endangered whale species?",
      'answer': [
        {'text': 'a. Amazon', 'score': 0},
        {'text': 'c. Microsoft', 'score': 0},
        {'text': 'd. Facebook', 'score': 0},
        {'text': 'b. Google', 'score': 1},
      ]
    },
    {
      'question':
          "Which of the following commission was appointed by the Central Government on Union-State relations in 1983?",
      'answer': [
        {'text': 'a. Sarkariya Commission', 'score': 1},
        {'text': 'c. Dutt Commission', 'score': 0},
        {'text': 'd. Setalvad Commission', 'score': 0},
        {'text': 'b. Rajamannar Commission', 'score': 0},
      ]
    },
    {
      'question':
          "Which of the following taxes are levied by the Union government but collected and appropriated by the states?",
      'answer': [
        {'text': 'a. Stamp Duties', 'score': 0},
        {'text': 'c. Excise Duties', 'score': 0},
        {'text': 'd. Sales Tax', 'score': 0},
        {'text': 'b. A and B', 'score': 1},
      ]
    },
    {
      'question': "The term of office of the Vice-president is as follows?",
      'answer': [
        {'text': 'a. 6 Years', 'score': 0},
        {'text': 'c. 2 Years', 'score': 0},
        {'text': 'b. 5 Years', 'score': 1},
        {'text': 'd. 7 Years', 'score': 0},
      ]
    },
  ];
// Resetting the quiz

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

// Changing Question Index
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("More question available");
    } else {
      print("No more questions!");
    }
  }

// Adding Question Numbers to the List
  void initState() {
    super.initState();
    for (var i = 1; i <= _questions.length; i++) {
      _questionNumber.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Overpass',
        backgroundColor: Color(0xFFD3B3F2),
        primaryColor: Color(0xFF9959F9),
        scaffoldBackgroundColor: Color(0xFF9959F9),
        cursorColor: Color(0xFFD3B3F2),
      ),
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.8,
          centerTitle: true,
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerHandler: _answerQuestion,
                questionIndex: _questionIndex,
                questionNumber: _questionNumber,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
