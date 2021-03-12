import 'package:flutter/material.dart';

class SecondQuestion extends StatelessWidget {
  List<String> dataArray = ['hoge', 'fuga', 'piyo'];
  Map<String, int> dataDictionary = {
    'one': 1,
    'two': 2,
    'three': 3,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Question'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(dataArray[1].toString()),
            Text(dataDictionary['three'].toString()),
          ],
        ),
      ),
    );
  }
}
