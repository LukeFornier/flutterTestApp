import 'package:flutter/material.dart';

import './result.dart';
import './reset.dart';
import './quiz.dart';

void main() => runApp(MyExampleApp());

class MyExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Question 1',
      'answers': [
        {
          'text': 'borp',
          'score': 1,
        },
        {
          'text': 'florp',
          'score': 2,
        },
        {
          'text': 'shorp',
          'score': 3,
        },
      ],
    },
    {
      'questionText': 'Question 2',
      'answers': [
        {
          'text': 'oop',
          'score': 1,
        },
        {
          'text': 'woop',
          'score': 2,
        },
        {
          'text': 'poop',
          'score': 3,
        },
      ],
    },
    {
      'questionText': 'Question 3',
      'answers': [
        {
          'text': 'eee',
          'score': 1,
        },
        {
          'text': 'aaa',
          'score': 2,
        },
        {
          'text': 'ooo',
          'score': 3,
        },
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionIndex++;
    });
    // print(questionIndex);
  }

  void _resetValues() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
        backgroundColor: Colors.pink[200],
        foregroundColor: Colors.black,
      ),
      body: _questionIndex < _questions.length
          ? Column(
              children: [
                Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex),
                // Text('You clicked the button $counter times.'),
                // Answer(answerQuestion, 'yes'),
              ],
            )
          : Result(_totalscore),
      floatingActionButton: ResetButton(_resetValues),
      backgroundColor: Colors.cyan,
    );
  }
}


// C:\My stuff\Coding\Flutter\flutter_app_test