import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

// self made custom widget
class IconContent extends StatelessWidget {
  final IconData myIcon;
  final String myText;

  IconContent({this.myIcon, this.myText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          myText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
