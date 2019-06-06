import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("Xylophone"),
            ),
            backgroundColor: Colors.black,
          ),
          body: XylophoneBody(),
        ),
      ),
    );
  }
}

class XylophoneBody extends StatelessWidget {
  Widget drawKey(
      {Color color, IconData iconData = Icons.music_note, int noteNumber = 1}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Icon(iconData),
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play('note$noteNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        drawKey(noteNumber: 1, color: Colors.yellow),
        drawKey(noteNumber: 2, color: Colors.orange),
        drawKey(noteNumber: 3, color: Colors.red),
        drawKey(noteNumber: 4, color: Colors.pink),
        drawKey(noteNumber: 5, color: Colors.purple),
        drawKey(noteNumber: 6, color: Colors.blue.shade800),
        drawKey(noteNumber: 7, color: Colors.blue),
      ],
    );
  }
}
