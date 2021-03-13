import 'package:flutter/material.dart';

class SampleTextField extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<SampleTextField> {
  FocusNode myFocusNode = FocusNode();

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Field Focus')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              autofocus: true,
            ),
            TextField(
              focusNode: myFocusNode,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myFocusNode.requestFocus();
        },
        tooltip: 'Focus Second Text Field',
        child: Icon(Icons.edit),
      ),
    );
  }
}
