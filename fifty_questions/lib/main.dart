import 'package:flutter/material.dart';

import '1/FirstQuestion.dart';
import '2/SecondQuestion.dart';
import '3/ThirdQuestion.dart';
import '6/SixthQuestion.dart';
import 'Alert/alert_dialog.dart';
import 'WebView/web_view.dart';
import 'TextField/text_field.dart';
import 'DropDownAndPopup/dropdown_popup.dart';
import 'DateAndTimePickers/date_and_time_pickers.dart';
import 'ListView/list_view.dart';
import 'FloatingListView/floating_list_view.dart';
import 'CardView/card_view.dart';
import 'StepperView/stepper_view.dart';
import 'SnackBarView/snack_bar_view.dart';
import 'TabBarView/tab_bar_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BodyApp(),
    );
  }
}

class BodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('50 Questions')),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              elevatedButtonType(context, 'Primitive型', FirstQuestion()),
              elevatedButtonType(context, 'Collection型', SecondQuestion()),
              elevatedButtonType(
                  context, 'Conditional Branch型', ThirdQuestion()),
              elevatedButtonType(context, 'Asset Images', SixthQuestion()),
              elevatedButtonType(context, 'Alert Dialog', ShowAlertDialog()),
              elevatedButtonType(context, 'Web View', WebViewExample()),
              elevatedButtonType(context, 'Text Field', SampleTextField()),
              elevatedButtonType(
                  context, 'Dropdown And Popup', SampleDropdownAndPopup()),
              elevatedButtonType(
                  context, 'Date And Time Pickers', SampleDateAndTimePickers()),
              elevatedButtonType(context, 'ListView', SampleListView()),
              elevatedButtonType(
                  context, 'Floating List View', SampleFloatingListView()),
              elevatedButtonType(context, 'Card View', SampleCardView()),
              elevatedButtonType(context, 'Stepper View', SampleStepperView()),
              elevatedButtonType(context, 'Snack Bar', SampleSnackBar()),
              elevatedButtonType(context, 'Tab Bar', SampleTabBarView()),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton elevatedButtonType(context, text, nextClass) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextClass),
        );
      },
    );
  }
}
