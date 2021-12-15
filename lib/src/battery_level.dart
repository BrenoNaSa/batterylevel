import 'package:flutter/services.dart';

class BatteryLevel {
  String batteryLevel = 'Unknown battery level.';

  static const platform = MethodChannel('java_in_flutter_key/batteryLevel');

  Future<void> getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
  }
}
