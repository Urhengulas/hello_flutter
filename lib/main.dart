import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(child: Text("Dicee")),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    setState(() {
      leftDiceNumber = randDice();
      rightDiceNumber = randDice();
    });
  }

  int randDice() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('img/dice$leftDiceNumber.png'),
              onPressed: () {
                rollDice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('img/dice$rightDiceNumber.png'),
              onPressed: () {
                rollDice();
              },
            ),
          )
        ],
      ),
    );
  }
}
