import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Travel Utilities';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),


        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Bookmarked Favorite Locations'),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Expense Tracker'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Photo Album'),
            ),
            ListTile(
              leading: Icon(Icons.add_location),
              title: Text('Places To Visit Nearby'),
            ),
            ListTile(
              leading: Icon(Icons.audiotrack),
              title: Text('Podcast'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Emergency Contacts'),
            ),
          ],
        ),
      ),
    );
  }
}    