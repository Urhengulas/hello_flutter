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
                  child: Divider(),
                  margin: EdgeInsets.only(left: 40.0, right: 40.0),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone, color: Colors.teal),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("+49 151 67476536"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.email, color: Colors.teal),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("joheihe@web.de"),
                    ],
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
