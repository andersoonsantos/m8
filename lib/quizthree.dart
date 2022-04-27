import 'package:flutter/material.dart';
import 'package:m8/licoes.dart';
import 'package:m8/navegacao.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:m8/question_brain3.dart';

QuestionBrain brain = new QuestionBrain();


class QuizThree extends StatefulWidget {
  const QuizThree({ Key? key }) : super(key: key);

  @override
  State<QuizThree> createState() => _QuizThreeState();
}

class _QuizThreeState extends State<QuizThree> {
  List<Widget> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = brain.getCorrectAnswer(); // getting the correct answer

    setState(() {
      if (brain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Fim!',
         
    
          buttons: [
            DialogButton(child: Text("Refazer",style: TextStyle(color:Colors.white, fontSize: 20 )),color: Color(0xFF60D45C), 
            onPressed: (){
                 Navigator.pop(context);
  

            }),
            DialogButton(child: Text("Início",style: TextStyle(color:Colors.white, fontSize: 20 )),color: Color(0xFF60D45C), onPressed: (){
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NavegacaoPage()),
  );


            }),
          ]
        ).show();

        // question number is set to 0 again
        brain.reset();

        scoreKeeper.clear();
        // scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          // navtive method of list to add something
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
            size: 25.0,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
            size: 25.0,
          ));
        }

        brain.getNextQuestion();
      }
    });
  }

 
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text('Lição 3',
      style: TextStyle(color: Color(0xFF60D45C)),
      ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(30),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Center(
                        child: Text(
                          brain.getQuestionText(),
                          style: TextStyle(fontSize: 21.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                       child: Text('Verdadeiro'),
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Color(0xFF60D45C),
      onSurface: Colors.grey,
      textStyle: TextStyle(
        fontSize: 25.0,
      )
    ),
    onPressed: () {
      checkAnswer(true);
    },),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Expanded(
                      child: TextButton(
                       child: Text('Falso'),
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.red.shade400,
      onSurface: Colors.grey,
      textStyle: TextStyle(
        fontSize: 25.0,
      )
    ),
    onPressed: () {
      checkAnswer(false);
    },),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: scoreKeeper,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}