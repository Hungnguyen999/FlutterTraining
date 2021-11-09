import 'package:flutter/material.dart';
import 'package:quizz_app/question.dart';
import 'quiz-brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizie app"),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  List<bool> listAnswer = [true, true, false];

  void addAnswer({type}) {
    if (type) {
      scoreKeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      scoreKeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        print(quizBrain.isFinished());
        // Show the dialog
        Alert(
          context: context,
          type: AlertType.warning,
          title: "You've finished this test",
          desc: "Your test has been done",
        ).show();

        // reset the question number
        quizBrain.resetQuestionNumber();

        // reset Scorekeeper
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          addAnswer(type: true);
          print('user got it true');
        } else {
          addAnswer(type: false);
          print('user got it wrong');
        }

        // If not the last question -> next
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                // for ensure the encapsulation
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.greenAccent,
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      checkAnswer(true);
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.redAccent,
                    child: Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      // User picked false
                      checkAnswer(false);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10.0,
              runSpacing: 20.0,
              children: scoreKeeper,
            ),
          ),
        ),
      ],
    );
  }
}
