import 'package:flutter/material.dart';

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
          body: YourBody(),
        ),
      ),
    ),
  );
}

class YourBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('img/dice1.png'),
              onPressed: () {
                print("Left button got pressed.");
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('img/dice3.png'),
              onPressed: () {
                print("Right button got pressed.");
              },
            ),
          )
        ],
      ),
    );
  }
}
