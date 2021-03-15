import 'package:flutter/material.dart';

class SampleDateAndTimePickers extends StatefulWidget {
  _DateAndTimePickersState createState() => _DateAndTimePickersState();
}

class _DateAndTimePickersState extends State<SampleDateAndTimePickers> {
  var _value = '';

  Future showDatePickers() async {
    DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2022),
      locale: Localizations.localeOf(context),
    );
    if (selected != null) {
      setState(() => _value = selected.toString());
    }
  }

  Future showTimePickers() async {
    TimeOfDay? selected = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selected != null) {
      setState(() {
        _value = selected.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Date And Time Pickers')),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              Text(_value),
              ElevatedButton(
                  onPressed: showDatePickers, child: const Text('Date Picker')),
              ElevatedButton(
                  onPressed: showTimePickers, child: const Text('Time Picker')),
            ],
          ),
        ),
      ),
    );
  }
}
