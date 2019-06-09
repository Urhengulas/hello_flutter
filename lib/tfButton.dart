import 'package:flutter/material.dart';

Expanded tfButton(
      {Color backgroundColor,
      String text,
      Function func,
      Color textColor = Colors.white}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: FlatButton(
          color: backgroundColor,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            func();
          },
        ),
      ),
    );
  }