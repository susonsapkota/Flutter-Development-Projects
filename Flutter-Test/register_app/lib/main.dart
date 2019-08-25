import 'package:flutter/material.dart';

import './product_manager.dart';

// you can write like this

//void main(){
//  runApp(MyApp());
//}

// or write like this

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('My List'),
            ),
            body: ProductManger(startingProduct : 'Food Tester'),
        ));
  }
}
