import 'package:flutter/material.dart';

void main() {
  runApp(NumberConverterApp());
}

class NumberConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NumberConverterScreen(),
    );
  }
}

class NumberConverterScreen extends StatefulWidget {
  @override
  _NumberConverterScreenState createState() => _NumberConverterScreenState();
}

class _NumberConverterScreenState extends State<NumberConverterScreen> {
  TextEditingController _inputController = TextEditingController();
  String _output = '';

  void convertToBinary() {
    String input = _inputController.text.trim();
    if (input.isNotEmpty) {
      if (_isBinary(input)) {
        setState(() {
          _output = 'Hexadecimal: ${_binaryToHexadecimal(input)}';
        });
      } else if (_isHexadecimal(input)) {
        setState(() {
          _output = 'Binary: ${_hexadecimalToBinary(input)}';
        });
      } else {
        setState(() {
          _output = 'Invalid input';
        });
      }
    }
  }

  bool _isBinary(String number) {
    final regex = RegExp(r'^[01]+$');
    return regex.hasMatch(number);
  }

  bool _isHexadecimal(String number) {
    final regex = RegExp(r'^[0-9A-Fa-f]+$');
    return regex.hasMatch(number);
  }

  String _binaryToHexadecimal(String binary) {
    int decimal = int.parse(binary, radix: 2);
    return decimal.toRadixString(16).toUpperCase();
  }

  String _hexadecimalToBinary(String hexadecimal) {
    int decimal = int.parse(hexadecimal, radix: 16);
    return decimal.toRadixString(2);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _inputController,
              decoration: InputDecoration(
                labelText: 'Enter a binary or hexadecimal number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertToBinary,
              child: Text('Convert'),
            ),
            SizedBox(height: 16.0),
            Text(
              _output,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
