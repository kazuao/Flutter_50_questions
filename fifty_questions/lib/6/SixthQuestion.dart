import 'package:flutter/material.dart';

class SixthQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sixth Question')),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/dog.jpeg'),
            Image.asset('assets/images/fox.jpg'),
          ],
        ),
      ),
    );
  }
}
