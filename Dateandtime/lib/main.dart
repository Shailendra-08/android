import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: DateTimeApp(),
  ));
}

class DateTimeApp extends StatefulWidget {
  @override
  _DateTimeAppState createState() => _DateTimeAppState();
}

class _DateTimeAppState extends State<DateTimeApp> {
  String _currentDate = '';
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _getCurrentDateTime();
  }

  void _getCurrentDateTime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, MMMM d, y').format(now);
    String formattedTime = DateFormat('h:mm a').format(now);

    setState(() {
      _currentDate = formattedDate;
      _currentTime = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date and Time'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Date: $_currentDate',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Time: $_currentTime',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
