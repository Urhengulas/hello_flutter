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
          body: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, // preserves big containers from shrinking, if adding content
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100.0,
                  child: Text("I am a red container."),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.yellow,
                      width: 100.0,
                      height: 100.0,
                      child: Text("I am a yellow container."),
                    ),
                    Container(
                      color: Colors.green,
                      width: 100.0,
                      height: 100.0,
                      child: Text("I am a green container."),
                    ),
                  ],
                ),
                Container(
                  color: Colors.blue,
                  width: 100.0,
                  child: Text("I am a blue container."),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
