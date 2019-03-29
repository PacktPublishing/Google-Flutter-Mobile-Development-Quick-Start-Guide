import 'package:flutter/material.dart';


void main() {
  runApp(MyApp(
    items: List<String>.generate(100, (i) => "List Item $i"),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  Widget build(BuildContext context) {
    final title = 'Listview Index';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),

          ),
          body:

          ListView.separated(
            itemCount: 25,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('${items[index]}'),
              );//ListTile
            },
          )//Listview.builder
      ),//Scaffold
    );//MaterialApp
  }
}