import 'package:m8/question/question_class.dart';

class QuestionBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    // list have indices or an index it defines the position of the item in the list
    // it starts with 0 to ......

    Question('O ativo de renda váriavel é mais arriscado por não ser possível dimensionar se retorno ?', true),
    Question('Risco de mercado é a incerteza quanto ao cpmportamento do preço dos ativos ?', true),
    Question('Títulos públicos e CDBs são ativos de renda váriavel ?', false),
    Question('O risco de mercado próvem da incerteza quanto ao preço dos ativos ?', true),
    Question('A renda váriavel se adequa a todos tipos de investimentos ?', false),
   

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