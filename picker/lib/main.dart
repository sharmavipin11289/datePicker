import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyAppNew());
}

class MyAppNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime date;
  final dateFormate = DateFormat('dd-MM-yyyy');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text((date == null) ? 'Picke date!!' : dateFormate.format(date)),
            TextButton(
              onPressed: () {
                print('enter');
                showDatePicker(
                  context: context,
                  initialDate: (date == null) ? DateTime.now() : date,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2022),
                ).then((value) {
                  setState(() {
                    date = value;
                  });
                });
              },
              child: Text('Choose Date'),
            ),
          ],
        ),
      ),
    );
  }
}
