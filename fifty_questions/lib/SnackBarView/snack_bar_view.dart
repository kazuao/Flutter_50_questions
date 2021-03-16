import 'package:flutter/material.dart';

class SampleSnackBar extends StatefulWidget {
  _SnackbarView createState() => _SnackbarView();
}

class _SnackbarView extends State<SampleSnackBar> {
  void _showBar() {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Hello World')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snack Bar')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: _showBar,
                child: const Text('開く'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
