import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = new AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKeys({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildKeys(color: Colors.redAccent, soundNum: 1),
                buildKeys(color: Colors.orangeAccent, soundNum: 2),
                buildKeys(color: Colors.yellowAccent, soundNum: 3),
                buildKeys(color: Colors.greenAccent, soundNum: 4),
                buildKeys(color: Colors.teal, soundNum: 5),
                buildKeys(color: Colors.blueAccent, soundNum: 6),
                buildKeys(color: Colors.purpleAccent, soundNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
