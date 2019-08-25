import 'package:flutter/material.dart';

//void main() => runApp(
//      // same as { return runApp;}
//      MaterialApp(
//        home: Scaffold(
//          backgroundColor: Colors.blueGrey,
//          appBar: AppBar(
//            backgroundColor: Colors.blueGrey[900],
//            title: Text('I Am Rich'),
//          ),
//          body: Center(
//            child: Image(image: AssetImage('images/diamond.png')),
//          ),
//        ),
//      ),
//    );

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue[800],
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text('I am poor'),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/coal.png'),
            ),
          ),
        ),
      ),
    );
