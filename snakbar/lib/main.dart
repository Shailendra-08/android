import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SnackbarApp(),
  ));
}

class SnackbarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This is a Snackbar'),
                duration: Duration(seconds: 2),
              ),
            );
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}
