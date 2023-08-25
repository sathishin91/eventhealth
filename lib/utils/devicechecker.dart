import 'package:flutter/widgets.dart';

class DeviceTypeChecker {
  static bool isTablet(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth > 600; // Adjust the threshold as needed
  }
}
