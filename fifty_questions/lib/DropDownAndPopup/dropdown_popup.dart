import 'package:flutter/material.dart';

class SampleDropdownAndPopup extends StatefulWidget {
  _DropdownState createState() => _DropdownState();
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class _DropdownState extends State<SampleDropdownAndPopup> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dropdown Button')),
      body: Center(
        child: Column(
          children: [
            dropdownButton(),
            popupButton(),
            Text(this._selectedValue),
          ],
        ),
      ),
    );
  }

  DropdownButton dropdownButton() {
    return DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 20,
        elevation: 16,
        style: const TextStyle(
          color: Colors.deepPurple,
        ),
        underline: Container(
          height: 2,
          color: Colors.deepPurple,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList());
  }

  var _usStates = ["California", "Hawaii", "Texas"];
  var _selectedValue = '';
  PopupMenuButton popupButton() {
    return PopupMenuButton<String>(
      initialValue: _selectedValue,
      onSelected: (String s) {
        setState(() {
          _selectedValue = s;
        });
      },
      itemBuilder: (BuildContext context) {
        return _usStates.map((String s) {
          return PopupMenuItem(
            child: Text(s),
            value: s,
          );
        }).toList();
      },
    );
  }
}
