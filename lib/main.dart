import 'package:flutter/material.dart';

void main() {
  runApp(YourApp());
}

class YourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("img/johann.jpg"),
              ),
              Text(
                "Johann Hemmann",
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
