import 'package:m8/question_class.dart';

class QuestionBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    // list have indices or an index it defines the position of the item in the list
    // it starts with 0 to ......

    Question('O Tesouro Direto é um programa que facillita a negociação de títulos públicos por pessoas jurídicas?', false),
    Question('O título que rende de acordo com a inflação é o Tesouro Selic?', false),
    Question('O Tesouro Direto é uma iniciativa dos municípios?', false),
     Question('Os títulos públicos são uma modalidade de renda fixa?', true),
      Question('Os títulos da dívida são seguros e de fácil resgate?', true),
   

  ];

  // getting question text

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  // whatever the question number
  // return the answer for it

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

//  next question

  void getNextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  // this resets everything back to 0

  void reset() {
    _questionNumber = 0;
  }

  // this returns boolean

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('quiz has run out of questions');
      return true;
    } else {
      return false;
    }
  }
}