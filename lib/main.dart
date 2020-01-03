import 'package:flutter/material.dart';
import "./Question.dart";
import "./Answer.dart";

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionTitle": "What\'s is your favorite color",
        "answer": {"a", "b", "c"}
      },
      {
        "questionTitle": "What\'s is your favorite animal",
        "answer": {"a", "b", "c", "d"}
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("this is title"),
            backgroundColor: Color.fromRGBO(222, 0, 70, 1),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]["questionText"]),
              ...questions.map((question) {
                return Answer(question);
              })
            ],
          )),
    );
  }
}
