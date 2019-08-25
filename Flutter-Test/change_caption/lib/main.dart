import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _mainText = 'This is the first text';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is test app'),
          ),
          body: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _mainText = 'This is changed!';
                  });
                },
                child: Text('Change Text'),
              ),
              Text(_mainText)
            ],
          )),
    );
  }
}
