import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Listview Index';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body:

          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("This is Position: $index"),
              ); //ListTile
            },
          ) //Listview.builder
      ),//Scaffold
    );//MaterialApp
  }
}