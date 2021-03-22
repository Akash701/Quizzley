import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qna_app/Options.dart';
import 'package:qna_app/QuestionCard.dart';
import 'package:qna_app/Question_Controller.dart';
import 'package:get/get.dart';

QuestionController questionController = QuestionController();

class World extends StatefulWidget {
  @override
  _WorldState createState() => _WorldState();
}

class _WorldState extends State<World> {
  int score = 0;
  Option option = Option();
  // List<Icon> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Color(0xFF2A2B31),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('World',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.w900,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => Text(
                      'Question ${_questionController.questionNumber.value}/10',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xFFD3D9DB),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Row(
          //   children: _questionController.scoreKeeper,
          // ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              controller: _questionController.pageController,
              onPageChanged: _questionController.updateTheQnNum,
              itemCount: _questionController.worldQuestions.length,
              itemBuilder: (context, index) => QuestionCard(
                  question: _questionController.worldQuestions[index]),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent,
                ),
                child: TextButton(
                  onPressed: () {
                    _questionController.quizreset();
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.power_settings_new,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Quit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                ),
                child: TextButton(
                  onPressed: _questionController.nextQuestion,
                  child: Row(
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
