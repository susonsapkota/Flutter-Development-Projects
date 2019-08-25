import 'package:flutter/material.dart';
import 'ui_data.dart';
import 'reddit_card.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: UIData.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return RedditCard(
            subLogo: UIData.posts[index].subLogo,
            subName: UIData.posts[index].subName,
            userName: UIData.posts[index].userName,
            title: UIData.posts[index].title,
            image: Image.asset(UIData.posts[index].image),
            upvotes: UIData.posts[index].upvotes,
            comments: UIData.posts[index].comments,
          );
        });
  }
}
