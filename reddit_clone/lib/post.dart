import 'package:flutter/material.dart';

class Post {
  final String subLogo;
  final String subName;
  final String userName;
  final String title;
  final String image;
  final String upvotes;
  final String comments;

  Post(
      {@required this.subLogo,
      @required this.subName,
      @required this.userName,
      @required this.title,
      @required this.upvotes,
      @required this.comments,
      this.image});
}
