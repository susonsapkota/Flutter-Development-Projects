import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reddit_clone/constants.dart';
import '../story.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _colors = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _colors,
      body: RefreshIndicator(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.rocket,
                        color: kTextColor,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'BEST POST',
                        style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                            fontFamily: 'Verdana'),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.view_agenda,
                    color: kTextColor,
                    size: 15.0,
                  )
                ],
              ),
            ),
            Expanded(child: Story()),
          ],
        ),
        onRefresh: () {
          print('Refereshed');
        },
      ),
    );
  }
}
