import 'package:flutter/material.dart';
import 'package:flutter_widgets/model/question.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List questionBank = [
    Question.name(
        "Bell-magpie is an Australasian songbird named for its loud metallic "
        "voice and magpielike black-and-white plumage?",
        true),
    Question.name(
        "Pigeon is an Australasian songbird named for its loud metallic "
        "voice and magpielike black-and-white plumage?",
        false),
    Question.name(
        "Bell-magpie is an Australasian songbird named for its loud metallic "
        "voice and magpielike black-and-white plumage?",
        true),
    Question.name(
        "Vulture is an Australasian songbird named for its loud metallic "
        "voice and magpielike black-and-white plumage?",
        false),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Center(
              //   child: Image.asset(
              //     "images/flag.png",
              //     width: 250,
              //     height: 180,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Q${_index + 1}. ${questionBank[_index].question}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _checkAns(true, context);
                      },
                      child: Text(
                        "True",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      child: Text(
                        "False",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        _checkAns(false, context);
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _nextQuestion();
                        },
                        child: Icon(
                          Icons.forward,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }

  _checkAns(bool ans, BuildContext context) {
    if (questionBank[_index].isCorrect == ans) {
      var snackBar = SnackBar(
        content: Text(
          "Correct!",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        backgroundColor: Colors.green,
        duration: Duration(milliseconds: 300),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      _nextQuestion();
    } else {
      var snackBar = SnackBar(
        content: Text(
          "Incorrect!",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        backgroundColor: Colors.redAccent,
        duration: Duration(milliseconds: 300),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  _nextQuestion() {
    setState(() {
      _index = (_index + 1) % questionBank.length;
    });
  }
}
