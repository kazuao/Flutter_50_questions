import 'package:flutter/material.dart';

class FirstQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool dataBool = false;
    final String dataString = 'hogehoge';
    final int dataInteger = 1;
    final double dataDouble = 1.1;

    return Scaffold(
      appBar: AppBar(title: const Text('First Question')),
      body: Center(
        child: Column(
          children: [
            Text(dataBool.toString()),
            Text(dataString),
            Text(dataInteger.toString()),
            Text(dataDouble.toString()),
          ],
        ),
      ),
    );
  }
}
