import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qna_app/Question_Controller.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  QuestionController _qnController = Get.put(QuestionController());
  Widget result() {
    if (_qnController.score >= 7) {
      return Image.asset(
        'images/first.png',
        height: 100,
        width: 100,
      );
    } else if (_qnController.score >= 5 && _qnController.score < 7) {
      return Image.asset(
        'images/second.png',
        height: 100,
        width: 100,
      );
    } else {
      return Image.asset(
        'images/third.png',
        height: 150,
        width: 150,
      );
    }
  }

  Color scoreColor() {
    if (_qnController.score >= 7) {
      return Colors.green;
    } else if (_qnController.score >= 5 && _qnController.score < 7) {
      return Colors.yellow;
    } else {
      return Colors.redAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
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
            height: 200,
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
            child: result(),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Your Score',
            style: TextStyle(
              fontSize: 30,
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
                child: Center(
                  child: Text(
                    '${_qnController.score}/10',
                    style: TextStyle(
                        color: scoreColor(),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          SizedBox(
            height: 40,
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
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
