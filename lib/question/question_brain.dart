import 'package:m8/question/question_class.dart';

class QuestionBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    // list have indices or an index it defines the position of the item in the list
    // it starts with 0 to ......

    Question('Uma ação é a menor parte do patrimonio da empresa ?',true),
    Question('Uma empresa emite ações com o objetivo de captar recursos ?', true),
    Question('O maior risco do investimento em ações é o de crédito ?', false),
    Question('Não há risco em se investir em ações ?', false),
    Question('Ações são ativos de renda variável ?', true),

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