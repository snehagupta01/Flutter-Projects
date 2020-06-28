import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final audio = AudioCache();
    audio.play('note$i.wav');
  }

  Expanded buildKey(int i, Color a) {
    return Expanded(
      child: FlatButton(
        color: a,
        onPressed: () {
          playSound(i);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1, Colors.pinkAccent),
            buildKey(2, Colors.yellowAccent),
            buildKey(3, Colors.lightBlueAccent),
            buildKey(4, Colors.deepOrange),
            buildKey(5, Colors.lightGreenAccent),
            buildKey(6, Colors.tealAccent),
            buildKey(7, Colors.purpleAccent)
          ],
        )),
      ),
    );
  }
}
