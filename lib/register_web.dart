import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';

class RegistWeb extends StatefulWidget {
  @override
  _RegistWebState createState() => _RegistWebState();
}

class _RegistWebState extends State<RegistWeb> {
  final Completer<WebViewController> _webControl =
      Completer<WebViewController>();

  void iniState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0D6AE3),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: WebView(
          initialUrl: "http://magz.intaxa.sidescriptdev.com/register/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _webControl.complete(webViewController);
          },
        ),
      ),
    );
  }
}
