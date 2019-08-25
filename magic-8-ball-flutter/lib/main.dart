import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int _ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            highlightColor: Colors.transparent,
            focusColor: null,
            splashColor: Colors.transparent,
            child: Image.asset('images/ball$_ballNum.png'),
            onPressed: () {
              print('Clicked : $_ballNum');
              setState(() {
                _ballNum = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
