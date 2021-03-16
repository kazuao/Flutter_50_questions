import 'package:flutter/material.dart';

class SampleCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card View')),
      body: Center(
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('タイトルタイトルタイトルタイトル'),
                subtitle: Text('サブタイトル'),
              ),
              ButtonBarTheme(
                data: ButtonBarThemeData(),
                child: ButtonBar(
                  children: [
                    TextButton(
                      child: const Text('詳細'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
