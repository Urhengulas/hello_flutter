import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("I am very rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image.network(
              'https://venturebeat.com/wp-content/uploads/2019/02/google-flutter-logo-white.png?fit=400%2C200&strip=all'),
        ),
      ),
    ),
  );
}
