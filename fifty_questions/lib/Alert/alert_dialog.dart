import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Dialog')),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: const Text('Show Dialog'),
              color: Colors.green,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text("タイトル"),
                      children: <Widget>[
                        // コンテンツ領域
                        SimpleDialogOption(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("１項目目"),
                        ),
                        SimpleDialogOption(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("２項目目"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: const Text('Show Button Dialog'),
              color: Colors.blue,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('タイトル'),
                      content: const Text('本文本文本文本文本文本文本文本文本文本文本文本文'),
                      actions: [
                        FlatButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('cancel'),
                        ),
                        FlatButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('ok'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
