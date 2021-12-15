import 'package:flutter/material.dart';
import 'package:batterylevel/batterylevel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String batteryLevel = "";
  Future<void> getInstenceBatteryLevel() async {
    final int result =
        await BatteryLevel.platform.invokeMethod('getBatteryLevel');
    batteryLevel = 'Battery level at $result % .';

    setState(() {
      batteryLevel = batteryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Get Battery Level'),
              onPressed: getInstenceBatteryLevel,
            ),
            Text(batteryLevel),
          ],
        ),
      ),
    );
  }
}
