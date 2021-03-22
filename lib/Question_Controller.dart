import 'package:flutter/material.dart';
import 'package:qna_app/AllQuestions.dart';
import 'package:get/get.dart';
import 'package:qna_app/Score.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  int score = 0;
  List<Icon> scoreKeeper = [];
  // Lets animated our progress bar

  AnimationController _animationController;
  Animation _animation;
  // so that we can access our animation outside
  Animation get animation => this._animation;

  PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _scienceQuestion = Science_data.map(
    (question) => Question(
        id: question['id'],
        question: question['question'],
        options: question['options'],
        answer: question['answer_index']),
  ).toList();
  List<Question> get scienceQuestions => this._scienceQuestion;

  List<Question> _mathsQuestion = Maths_data.map(
    (question) => Question(
        id: question['id'],
        question: question['question'],
        options: question['options'],
        answer: question['answer_index']),
  ).toList();
  List<Question> get mathsQuestions => this._mathsQuestion;

  List<Question> _worldQuestion = World_data.map(
    (question) => Question(
        id: question['id'],
        question: question['question'],
        options: question['options'],
        answer: question['answer_index']),
  ).toList();
  List<Question> get worldQuestions => this._worldQuestion;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns;
  int get correctAns => this._correctAns;

  int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  // called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    // Once 60s is completed go to the next qn
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  int checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    // Future.delayed(Duration(seconds: 3), () {
    //   nextQuestion();
    // });
    if (_correctAns == _selectedAns) {
      score++;
    }
    if (_correctAns == _selectedAns) {
      scoreKeeper.add(Icon(
        Icons.minimize_rounded,
        color: Colors.green,
        size: 20,
      ));
    } else {
      scoreKeeper.add(Icon(
        Icons.minimize_rounded,
        color: Colors.red,
        size: 20,
      ));
    }
    return score;
  }

  void nextQuestion() {
    if (_questionNumber.value != _scienceQuestion.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250),
          curve: Curves.ease); //Changing time of the container

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to naviigate another page
      Get.to(Score());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  void scoreReset() {
    score = 0;
  }

  void quizreset() {
    _isAnswered = false;
    score = 0;
    questionNumber.value = 1;
  }
}
