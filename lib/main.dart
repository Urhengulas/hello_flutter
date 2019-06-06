import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepPurple.shade300,
          appBar: AppBar(
            title: Center(
              child: Text("Ask me"),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body: Magic8(),
        ),
      ),
    );

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int ballNum = 1;

  void newBall() {
    setState(() {
      ballNum = otherBall();
    });
  }

  int otherBall() {
    int ball = ballNum;

    while (ball == ballNum) {
      ball = randBall();
    }

    return ball;
  }

  int randBall() {
    return Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: FlatButton(
          child: Image.asset('img/ball$ballNum.png'),
          onPressed: () {
            newBall();
          },
        ),
      ),
    );
  }
}
