import 'package:covid/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:covid/onboardscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intaxa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: OnBoarding()
      home: Splash(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => OnBoarding()
      },
    );
  }
}
