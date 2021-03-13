import 'package:flutter/material.dart';

import '1/FirstQuestion.dart';
import '2/SecondQuestion.dart';
import '3/ThirdQuestion.dart';
import '6/SixthQuestion.dart';
import 'Alert/alert_dialog.dart';
import 'WebView/web_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BodyApp(),
    );
  }
}

class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('50 Questions')),
      body: Center(
        child: Column(
          children: [
            raisedButtonType(context, 'Primitive型', FirstQuestion()),
            raisedButtonType(context, 'Collection型', SecondQuestion()),
            raisedButtonType(context, 'Conditional Branch型', ThirdQuestion()),
            raisedButtonType(context, 'Asset Images', SixthQuestion()),
            raisedButtonType(context, 'Alert Dialog', ShowAlertDialog()),
            raisedButtonType(context, 'Web View', ShowWebView()),
          ],
        ),
      ),
    );
  }

  RaisedButton raisedButtonType(context, text, nextClass) {
    return RaisedButton(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      color: Colors.orange,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextClass),
        );
      },
    );
  }
}
