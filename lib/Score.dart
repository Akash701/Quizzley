import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qna_app/Question_Controller.dart';
import 'package:qna_app/Options.dart';
import 'package:qna_app/QuestionCard.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    // Option option = Get.put(Option());
    return Scaffold(
      backgroundColor: Color(0xFFD3D9DB),
      body: Column(
        children: [
          Container(
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.all(20),
              child: Text('Quiz Result',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white60,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            height: 250,
            decoration: BoxDecoration(
              color: Color(0xFF2A2B31),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
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
              color: Colors.black54,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: new Center(
                  child: new Text(
                    '${_qnController.score}/10',
                    style: TextStyle(color: Colors.redAccent, fontSize: 50),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent,
            ),
            child: TextButton(
              onPressed: () {
                setState(() {
                  _qnController.quizreset();
                  Navigator.pop(context);
                  Navigator.pop(context);
                });
              },
              child: Text(
                'Take New Quiz',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
