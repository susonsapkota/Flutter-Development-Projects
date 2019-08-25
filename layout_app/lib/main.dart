import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Layouts'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          children: <Widget>[
            //first child
            Column( 
              children: <Widget>[
                Text('Strawberry Pavlova', textAlign: TextAlign.center),
                Text('The Row widget does not scroll.'),
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star_half),
                      ],
                    ),
                    Text('170 Reviews')
                  ],
                ),
            Row(
              children: <Widget>[
              //first row
              Column(
                children: <Widget>[
                  Icon(Icons.book),
                  Text('Prep.'),
                  Text('25 mins.')
                ],
              ),
              //second row
               Column(
                children: <Widget>[
                  Icon(Icons.book),
                  Text('Prep.'),
                  Text('25 mins.')
                ],
              ),
              //third row
               Column(
                children: <Widget>[
                  Icon(Icons.book),
                  Text('Prep.'),
                  Text('25 mins.')
                ],
              )
            ],
            ),
            // second half for image
            Container(
              width: 180.0,
              height: 180.0,
              child: const Icon(
                Icons.album,
              ),
              color: Colors.amber.shade400,
            ),
            ],
            ),
          ],
    ),
      ),
  ),
  ),
);

