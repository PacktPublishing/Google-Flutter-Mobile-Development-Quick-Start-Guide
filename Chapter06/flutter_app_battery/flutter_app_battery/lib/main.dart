import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Platform Channel API',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Flutter Platform Channel API'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  static const platform = const MethodChannel('call.flutter.io/battery');
  String _batteryLevel = 'Battery Levels are Unknown';
  Future<void> _getPhoneBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');

      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text ("Click the button to know your phone battery levels"),
            RaisedButton(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.red, Colors.green,
                    Colors.brown],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Text('Get Phone Battery Level'),
              ),
              onPressed: _getPhoneBatteryLevel,
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
            ),
            Text(_batteryLevel),
          ],
        ),
      ),
    );
  }
}