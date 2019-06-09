import 'package:flutter/material.dart';
import 'questionBrain.dart';
import 'tfButton.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
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
  List<Icon> scoreList = [];

  QuestionBrain brain = QuestionBrain();

  void clickFunction(bool selectAnswer) {
    Icon symbol = getTfIcon(selectAnswer);
    bool endOfGame = brain.next();

    if (endOfGame == false) {
      setState(() {
        scoreList.add(symbol);
      });
    } else if (endOfGame == true) {
      Alert(
        context: context,
        type: AlertType.success,
        title: "Game is Over",
        desc: "To restart click the button below.",
        buttons: [
          DialogButton(
            child: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              restart();
              Navigator.pop(context);
            },
            width: 120,
          )
        ],
      ).show();
    }
  }

  Icon getTfIcon(bool selectAnswer) {
    if (brain.check(selectAnswer) == true) {
      return Icon(
        Icons.done,
        color: Colors.green,
      );
    } else {
      return Icon(
        Icons.clear,
        color: Colors.red,
      );
    }
  }

  void restart() {
    brain.restart();
    setState(() {
      scoreList = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                brain.getText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        tfButton(
          text: "True",
          backgroundColor: Colors.green,
          func: () => clickFunction(true),
        ),
        tfButton(
          text: "False",
          backgroundColor: Colors.red,
          func: () => clickFunction(false),
        ),
        Row(
          children: scoreList,
        )
      ],
    );
  }
}
