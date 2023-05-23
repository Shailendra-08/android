import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:battery/battery.dart';

void main() {
  runApp(BatteryLevelApp());
}

class BatteryLevelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battery Level',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: BatteryLevelScreen(),
      debugShowCheckedModeBanner: false,
    );

  }
}

class BatteryLevelScreen extends StatefulWidget {
  @override
  _BatteryLevelScreenState createState() => _BatteryLevelScreenState();
}

class _BatteryLevelScreenState extends State<BatteryLevelScreen> {
  final Battery _battery = Battery();
  late StreamSubscription<BatteryState> _batteryStateSubscription;
  int _batteryLevel = 0;

  @override
  void initState() {
    super.initState();
    _batteryStateSubscription = _battery.onBatteryStateChanged.listen((BatteryState state) {
      _updateBatteryLevel();
    });

    _updateBatteryLevel();
  }

  @override
  void dispose() {
    _batteryStateSubscription.cancel();
    super.dispose();
  }

  Future<void> _updateBatteryLevel() async {
    int? batteryLevel;
    try {
      batteryLevel = await _battery.batteryLevel;
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
      batteryLevel = null;
    }

    setState(() {
      _batteryLevel = batteryLevel ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Battery Level'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Battery Level: $_batteryLevel%',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            Container(
              width: 200.0,
              child: LinearProgressIndicator(
                value: _batteryLevel / 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
