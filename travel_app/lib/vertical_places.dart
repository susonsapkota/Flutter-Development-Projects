import 'package:flutter/material.dart';

class VerticalPlaces extends StatelessWidget {
  const VerticalPlaces({
    Key key,
    @required this.darkThemeEnabled,
  }) : super(key: key);

  final bool darkThemeEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132.6,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            leading: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://source.unsplash.com/180x200/?nature,water,spain',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 5,
            ),
            title: Text('Hotel Dolah Amet & Suites'),
            isThreeLine: true,
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: darkThemeEnabled ? Colors.white : Colors.black,
                    ),
                    Text(' London, England')
                  ],
                ),
                Text(
                  '\$100/night',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          ListTile(
            leading: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://source.unsplash.com/180x200/?nature,water,nepal',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 5,
            ),
            title: Text('Hotel Dwarika'),
            isThreeLine: true,
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: darkThemeEnabled ? Colors.white : Colors.black,
                    ),
                    Text(' Kathmandu, Nepal')
                  ],
                ),
                Text(
                  '\$100/night',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          ListTile(
            leading: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://source.unsplash.com/180x200/?nature,water',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 5,
            ),
            title: Text('Hotel Hyatt'),
            isThreeLine: true,
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: darkThemeEnabled ? Colors.white : Colors.black,
                    ),
                    Text(' Kathmandu, Nepal')
                  ],
                ),
                Text(
                  '\$50/night',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
