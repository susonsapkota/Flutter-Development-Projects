import 'package:flutter/material.dart';

class HorizontalPlaces extends StatelessWidget {
  const HorizontalPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.39,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 170,
                height: 260,
                child: Column(
                  children: <Widget>[
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://source.unsplash.com/180x200/?nature,water,italy',
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                    ListTile(
                      title: Text(
                        'Tincidunt Pool',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Madrid, Spain'),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 170,
                height: 260,
                child: Column(
                  children: <Widget>[
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://source.unsplash.com/180x200/?nature,water,pool',
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                    ListTile(
                      title: Text(
                        'Carabitur Beach',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Rome, Italy'),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 170,
                height: 260,
                child: Column(
                  children: <Widget>[
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://source.unsplash.com/180x200/?nature,water,paris',
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                    ListTile(
                      title: Text(
                        'Ipsup Creek',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Paris, France'),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 170,
                height: 260,
                child: Column(
                  children: <Widget>[
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        'https://source.unsplash.com/180x200/?nature,water,nepal',
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                    ListTile(
                      title: Text(
                        'Morang',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Kathmandu, Nepal'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
