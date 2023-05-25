import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? selectedGender;
  bool checkboxValue = false;

  void showSubmittedToast() {
    Fluttertoast.showToast(
      msg: 'Submitted',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radio Button Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Gender:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Radio(
                    value: 'male',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String?;
                      });
                    },
                  ),
                  Text('Male'),
                  Radio(
                    value: 'female',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value as String?;
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
              SizedBox(height: 16.0),
              if (selectedGender != null)
                Row(
                  children: [
                    Icon(
                      selectedGender == 'male' ? Icons.male : Icons.female,
                      size: 40.0,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      selectedGender == 'male' ? 'Male' : 'Female',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              SizedBox(height: 16.0),
              CheckboxListTile(
                title: Text('Agree to Terms and Conditions'),
                value: checkboxValue,
                onChanged: (value) {
                  setState(() {
                    checkboxValue = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (checkboxValue) {
                    showSubmittedToast();
                  } else {
                    Fluttertoast.showToast(
                      msg: 'Please agree to the Terms and Conditions',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
