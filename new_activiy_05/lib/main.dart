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
      debugShowCheckedModeBanner: false,
    );
  }
}

class NumberConverterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              buttonText: 'Button 1',
              onPressed: () {
                _navigateToScreen(context, 'Button 1');
              },
            ),
            ButtonWidget(
              buttonText: 'Button 2',
              onPressed: () {
                _navigateToScreen(context, 'Button 2');
              },
            ),
            ButtonWidget(
              buttonText: 'Button 3',
              onPressed: () {
                _navigateToScreen(context, 'Button 3');
              },
            ),
            ButtonWidget(
              buttonText: 'Button 4',
              onPressed: () {
                _navigateToScreen(context, 'Button 4');
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToScreen(BuildContext context, String message) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ClickedScreen(clickedButton: message),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ButtonWidget({
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}

class ClickedScreen extends StatelessWidget {
  final String clickedButton;

  const ClickedScreen({required this.clickedButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clicked Screen'),
      ),
      body: Center(
        child: Text(
          'You clicked: $clickedButton',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}