import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qna_app/Question_Controller.dart';
import 'package:qna_app/Science_Folder/Options.dart';
import 'package:qna_app/Science_Folder/QuestionCard.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    Option option = Get.put(Option());
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Quiz Result',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
              // child: result(),
              ),
          SizedBox(
            height: 70,
          ),
          Text(
            'Your Score',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 150.0,
            width: 300.0,
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: new Center(
                  child: new Text(
                    '${_qnController.score}',
                    style: TextStyle(color: Colors.white, fontSize: 50),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          SizedBox(
            height: 60,
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: Colors.lightBlue,
            onPressed: () {
              setState(() {
                _qnController.scoreReset();
                _qnController.quizreset();
                _qnController.questionNumber.value = 1;
                Navigator.pop(context);
                Navigator.pop(context);
              });
            },
            child: Text(
              'Take New Quiz',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
