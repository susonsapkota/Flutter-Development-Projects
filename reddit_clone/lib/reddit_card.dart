import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class RedditCard extends StatelessWidget {
  final String subLogo;
  final String subName;
  final String userName;
  final String title;
  final Image image;
  final String upvotes;
  final String comments;

  RedditCard({
    @required this.subLogo,
    @required this.subName,
    @required this.userName,
    @required this.title,
    @required this.upvotes,
    @required this.comments,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF121214),
      padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(subLogo),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    subName,
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '$userName • 6h • imgur',
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 13.0,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              Expanded(
                child: Row(
                  verticalDirection: VerticalDirection.up,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 15.0, 0.0),
                      child: Icon(
                        Icons.more_horiz,
                        color: kTextColor,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Verdana',
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // if image is null then use sized box else use image itself.
          image ?? SizedBox.shrink(),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_upward,
                    color: kTextColor,
                  ),
                  Text(
                    upvotes,
                    style: TextStyle(color: kTextColor),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: kTextColor,
                  ),
                ],
              ),
              FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  FontAwesomeIcons.solidComment,
                  size: 20.0,
                ),
                label: Text(comments),
              ),
              FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  FontAwesomeIcons.share,
                  size: 20.0,
                ),
                label: Text('share'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
