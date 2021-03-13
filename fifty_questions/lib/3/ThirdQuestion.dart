import 'package:flutter/material.dart';

class ThirdQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Question')),
      body: Center(
        child: Column(
          children: [
            Text(sampleIf(5).toString()),
            Text(sampleTernaryOperator()),
            Text(sampleFor()),
            Text(sampleForIn()),
          ],
        ),
      ),
    );
  }

  String sampleIf(int n) {
    var answer = '';
    if (n >= 10) {
      answer = '10以上';
    } else if (n >= 3) {
      answer = '3以上、10未満';
    } else {
      answer = '3未満';
    }
    return answer;
  }

  String sampleTernaryOperator({String hoge = ''}) {
    var answer = hoge.isNotEmpty ? hoge : 'からです';
    return answer;
  }

  String sampleFor() {
    var fuga = '';
    for (var i = 0; i <= 5; i++) {
      fuga += 'hoge ';
    }
    return fuga;
  }

  String sampleForIn() {
    var piyopiyo = [1, 2, 3, 4, 5];

    var hoge = '';
    for (var piyo in piyopiyo) {
      hoge += piyo.toString();
    }
    return hoge;
  }
}
