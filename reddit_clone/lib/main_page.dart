import 'package:flutter/material.dart';
import 'package:reddit_clone/pages/home_page.dart';
import 'package:reddit_clone/pages/news_page.dart';
import 'package:reddit_clone/pages/popular_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: Color(0xFF121214),
              leading: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'images/avatar.png',
                    scale: 6.5,
                  ),
                ),
              ),
              title: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF272729),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                height: 40.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.search,
                          color: Color(0xFF828284),
                        ),
                        SizedBox(width: 15.0),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(text: 'News'),
                  Tab(text: 'Home'),
                  Tab(text: 'Popular'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              NewsPage(),
              HomePage(),
              PopularPage(),
            ],
          ),
        ),
      ),
    );
  }
}
