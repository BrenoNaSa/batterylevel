import 'package:flutter/services.dart';

class BatteryLevel {
  String batteryLevel = 'Unknown battery level.';
  static const platform = MethodChannel('java_in_flutter_key/batteryLevel');
}
