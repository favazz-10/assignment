import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(theme: ThemeData(primarySwatch: Colors.green),home: Date_time()),);
}
class Date_time extends StatefulWidget {
  @override
  _datetime createState() => _datetime();
}
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
            type: DateTimePickerType.dateTimeSeparate,
            initialValue: DateTime.now().toString(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            cancelText: 'Back',
            confirmText: 'Confirm',
            calendarTitle: 'DateTimePicker',
            dateLabelText: 'Date',
            style: TextStyle(color: Colors.red),
            timeLabelText: "Time",
            onChanged: (value) => print(value),
            validator: (value) {
              print(value);
              return null;
            },
            onSaved: (value) => debugPrint(value),
          ),
        ));
  }
}
//trtryryrjr