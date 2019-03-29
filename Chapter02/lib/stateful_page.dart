import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  final String title;

  const StatefulPage({Key key, this.title}) : super(key: key);

  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: value ? Colors.black : Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
        child: Switch(
            value: value,
            onChanged: (v) {
              setState(() {
                value = v;
              });
            }),
      ),
    );
  }
}
