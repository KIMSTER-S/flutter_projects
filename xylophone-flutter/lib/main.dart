import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

Expanded buildKey(Color color, int note) {
  return Expanded(
    child: Container(
      color: color,
      child: InkWell(
        enableFeedback: false,
        onTap: () {
          final player = AudioPlayer();
          // player.setSource(
          //   AssetSource('assets/note1'),
          // );
          player.play(
            AssetSource('note$note.wav'),
          );
        },
        //child: Text('Click me'),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                buildKey(Colors.blue, 1),
                buildKey(Colors.yellow, 2),
                buildKey(Colors.green, 3),
                buildKey(Colors.red, 4),
                buildKey(Colors.cyan, 5),
                buildKey(Colors.pink, 6),
                buildKey(Colors.grey, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
