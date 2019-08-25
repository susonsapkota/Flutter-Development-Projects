import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({
    Key key,
    @required this.darkThemeEnabled,
  }) : super(key: key);

  final bool darkThemeEnabled;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      color: darkThemeEnabled ? Colors.black : Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: darkThemeEnabled ? Colors.white : Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: darkThemeEnabled ? Colors.white : Colors.black,
              ),
              onPressed: () {}),
          Container(
            child: Stack(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.mode_comment,
                      color: darkThemeEnabled ? Colors.white : Colors.black,
                      size: 20,
                    ),
                    onPressed: () {}),
                Positioned(
                  top: 11,
                  right: 11,
                  child: Icon(Icons.brightness_1,
                      size: 13.0, color: Colors.redAccent),
                )
              ],
            ),
          ),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.userAlt,
                color: darkThemeEnabled ? Colors.white : Colors.black,
                size: 18,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
