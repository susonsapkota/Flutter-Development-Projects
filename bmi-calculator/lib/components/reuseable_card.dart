import 'package:flutter/material.dart';

// self made custom widget
class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onTapFunc;

  ReusableCard({@required this.color, this.cardChild, this.onTapFunc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunc,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
