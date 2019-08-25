import 'package:flutter/material.dart';
import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF121214),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(color: Color(0xFF121214)),
      ),
      home: MainPage(),
    );
  }
}
