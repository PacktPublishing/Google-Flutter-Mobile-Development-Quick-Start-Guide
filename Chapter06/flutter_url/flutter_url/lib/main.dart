import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Packages',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Packages in Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            RaisedButton(
              onPressed: _initiateURL,
              textColor: Colors.black,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.green, Colors.yellow, Colors.yellowAccent],

                  ),
                ),

                padding: const EdgeInsets.all(10.0),
                child: Text('Open Flutter Website'),
              ),
            ),
          ],
        ),
      ),
    );

  }

  _initiateURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Sorry, We could not launch the URL $url';
    }
  }

}