import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/vertical_places.dart';

import 'bottom_appbar.dart';
import 'horizontal_places.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkThemeEnabled = false;

  var lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.white),
    primaryColor: Colors.white,
    accentColor: Colors.black,
    appBarTheme: AppBarTheme(
        elevation: 0.0,
        color: Colors.white,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black)),
  );

  var darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
    accentColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: Colors.black,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkThemeEnabled ? darkTheme : lightTheme,
      home: Homepage(),
    );
  }

  Widget Homepage() {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(18),
                  child: Icon(FontAwesomeIcons.bell)),
              Positioned(
                top: 18,
                right: 18,
                child: Icon(Icons.brightness_1,
                    size: 13.0, color: Colors.redAccent),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: darkThemeEnabled,
                onChanged: (changeTheme) {
                  setState(() {
                    darkThemeEnabled = changeTheme;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomAppBar(darkThemeEnabled: darkThemeEnabled),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 2, 15, 8),
              child: Text(
                'Where are you going?',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              decoration: BoxDecoration(
                  color: Color(0xFFE7EBEE),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.location_on,
                            size: 25,
                            color: Colors.grey,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          hintText: 'E.g: New York, United States'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            HorizontalPlaces(),
            VerticalPlaces(darkThemeEnabled: darkThemeEnabled),
          ],
        ),
      ),
    );
  }
}
