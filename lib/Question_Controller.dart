import 'package:flutter/material.dart';
import 'package:qna_app/Science_Folder/Sciece_Questions.dart';

class QuestionController {
  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();
  List<Question> get questions => this._questions;
}
