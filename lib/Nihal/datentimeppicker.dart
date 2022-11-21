import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

//import 'package:intl/intl_browser.dart';
void main() {
  return runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.green),home: Date_time()),);
}

/// My app class to display the date range picker
class Date_time extends StatefulWidget {
  @override
  _datetime createState() => _datetime();
}

/// State for MyApp
class _datetime extends State<Date_time> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Date and Time Picker'),
        ),
        body: SizedBox(
          height: 150,
          child: DateTimePicker(
            icon: Icon(Icons.calendar_month),
            cancelText: 'Back',
            confirmText: 'Confirm',
            type: DateTimePickerType.dateTimeSeparate,
            initialValue: '',
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            calendarTitle: 'DateTimePicker',
            dateLabelText: 'Date',
            style: TextStyle(color: Colors.black),
            timeLabelText: "Time",
            onChanged: (value) => print(value),
            validator: (value) {
              print(value);
              return null;
            },
            onSaved: (value) => print(value),
          ),
        ));
  }
}
