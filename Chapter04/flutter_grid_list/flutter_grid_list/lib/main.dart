import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List Example';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 3 columns.
          crossAxisCount: 3,
          // Generate 100 Widgets that display their positions in the List
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Position $index',
                style: Theme.of(context).textTheme.headline,
              ), // Text
            ); //Center
          }), //List.Generate
        ), //GridView.count
      ), //Scaffold
    );   // MaterialApp
  }
}