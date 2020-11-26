import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  starttime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  void initState() {
    super.initState();
    starttime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 320.0),
            child: Center(
              child: Image.asset(
                'assets/intaxa.png',
                height: 80.0,
                width: 206.0,
              ),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Center(
              child: Image.asset(
                'assets/sidescript.png',
                width: 100.0,
                height: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
