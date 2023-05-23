import 'package:flutter/material.dart';

void main() {
  runApp(GenderSelectionApp());
}

class GenderSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gender Selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GenderSelectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GenderSelectionScreen extends StatefulWidget {
  @override
  _GenderSelectionScreenState createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gender Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
              title: Text('Male'),
              value: 'male',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'female',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),

            SizedBox(height: 16.0),
            selectedGender.isEmpty
                ? Container()
                : Icon(
              selectedGender == 'male' ? Icons.male : Icons.female,
              size: 148.0,
            ),

          // :  Image.asset(
          //     selectedGender == 'boy'
          //         ? 'assets/images/boyimage.png'
          //         : 'assets/images/girlpage.png',
          //     width: 48.0,
          //     height: 48.0,
          //   ),

          ],
        ),
      ),
    );
  }
}
