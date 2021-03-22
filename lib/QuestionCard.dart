import 'package:flutter/material.dart';
import 'package:qna_app/AllQuestions.dart';
import 'package:qna_app/Options.dart';
import 'package:get/get.dart';
import 'package:qna_app/Question_Controller.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({@required this.question});
  final Question question;
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
