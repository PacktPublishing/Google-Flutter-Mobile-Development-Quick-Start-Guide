import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List Example';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 100.0),
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal, //Specifying axis direction
            children: <Widget>[
              Container(
                width: 120.0,
                color: Colors.orange,

              ),
              Container(
                width: 120.0,
                color: Colors.white,
              ),
              Container(
                width: 120.0,
                color: Colors.green,
              ),
              Container(
                width: 120.0,
                color: Colors.pink,
              ),
              Container(
                width: 120.0,
                color: Colors.lime,

              ), // Container
            ], // <Widget>[]
          ), //Listview
        ), //Container
      ), // Scaffold
    ); //MaterialApp
  }
}