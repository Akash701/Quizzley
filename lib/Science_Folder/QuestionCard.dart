import 'package:flutter/material.dart';
import 'package:qna_app/Science_Folder/Sciece_Questions.dart';
import 'package:qna_app/Science_Folder/Options.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({@required this.question});
  final Question question;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            sample_data[0]['question'],
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Options(),
          Options(),
          Options(),
          Options(),
        ],
      ),
    );
  }
}
