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
            margin: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("img/johann.jpg"),
                  radius: 60.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Johann Hemmann",
                    style: TextStyle(
                      fontFamily: "Satisfy",
                      fontSize: 30.0,
                      height: 0.8,
                    ),
                  ),
                ),
                Text(
                  "Software Engineer".toUpperCase(),
                  style: TextStyle(
                    fontFamily: "SpaceMono",
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade900,
                  ),
                ),
                Container(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.teal.shade900,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text("+49 15167476536"),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text("joheihe@web.de"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
