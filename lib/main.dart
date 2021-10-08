import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    // create a new audio player
    final player = AudioCache();
    // play the file
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int roundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color
        ),
        onPressed: () {
          playSound(roundNumber);
        }
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
            children: [
              buildKey(color: Colors.red, roundNumber: 1),
              buildKey(color: Colors.orange, roundNumber: 2),
              buildKey(color: Colors.yellow, roundNumber: 3),
              buildKey(color: Colors.green, roundNumber: 4),
              buildKey(color: Colors.teal, roundNumber: 5),
              buildKey(color: Colors.blue, roundNumber: 6),
              buildKey(color: Colors.purple, roundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
