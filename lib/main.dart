import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp()); //returns the app

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int note}) {
    return Expanded(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  static AudioCache player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Xylophone',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, note: 1),
              buildKey(color: Colors.orange, note: 2),
              buildKey(color: Colors.yellow, note: 3),
              buildKey(color: Colors.green, note: 4),
              buildKey(color: Colors.teal, note: 5),
              buildKey(color: Colors.blue, note: 6),
              buildKey(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
