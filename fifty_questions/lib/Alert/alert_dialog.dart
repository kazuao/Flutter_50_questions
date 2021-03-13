import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Dialog')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Show Dialog'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
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
            ElevatedButton(
              child: const Text('Show Button Dialog'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('タイトル'),
                      content: const Text('本文本文本文本文本文本文本文本文本文本文本文本文'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('cancel'),
                        ),
                        TextButton(
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
