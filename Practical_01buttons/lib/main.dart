import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Layout '),
        ),
        body: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showToast('Button 1');
                    },
                    child: Text('Button 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showToast('Button 2');
                    },
                    child: Text('Button 2'),
                  ),
                ],
              ),
              SizedBox(height: 250),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showToast('Button 3');
                    },
                    child: Text('Button 3'),
                    
                  ),
                  Padding(padding: EdgeInsets.all(28.0),),


                  ElevatedButton(
                    onPressed: () {
                      showToast('Button 4');
                    },
                    child: Text('Button 4'),
                  ),
                  Padding(padding: EdgeInsets.all(36.0),),
                  ElevatedButton(
                    onPressed: () {
                      showToast('Button 5');
                    },
                    child: Text('Button 5'),
                  ),
                ],
              ),
              SizedBox(height: 250),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showToast('Button 6');
                    },
                    child: Text('Button 6'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showToast('Button 7');
                    },
                    child: Text('Button 7'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
    );
  }
}
