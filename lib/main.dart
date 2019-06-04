import 'package:flutter/material.dart';

void main() {
  runApp(
    YourApp(),
  );
}

class YourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "I am an app",
      home: Scaffold(
          backgroundColor: Colors.green[300],
          appBar: AppBar(
            title: Text("Anna Hemman zieht es in die Welt"),
            backgroundColor: Colors.green[800],
          ),
          body: Center(
            child: Image.network(
                'https://media04.meinanzeiger.de/article/2014/11/04/9/117079_L.jpg?1556343184'),
          )),
    );
  }
}
