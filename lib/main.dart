import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color couleur, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: couleur,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(couleur: Colors.red, soundNumber: 1),
              buildKey(couleur: Colors.blue, soundNumber: 2),
              buildKey(couleur: Colors.yellow, soundNumber: 3),
              buildKey(couleur: Colors.orange, soundNumber: 4),
              buildKey(couleur: Colors.green, soundNumber: 5),
              buildKey(couleur: Colors.purple, soundNumber: 6),
              buildKey(couleur: Colors.pink, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
