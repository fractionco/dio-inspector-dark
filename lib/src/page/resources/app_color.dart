import 'package:flutter/material.dart';

class AppColor {
  static Color getPrimary(BuildContext context) => Colors.blue;
  static Color getBackgroundColor(BuildContext context) {
    return Colors.white;
  }

  static Color getTextColor(BuildContext context) {
    return Colors.black;
  }

  static Color getCardColor(BuildContext context) {
    return Colors.grey;
  }

  static Color getDividerColor(BuildContext context) {
    return Colors.grey;
  }

  static Color getErrorColor(BuildContext context) {
    return Colors.red;
  }

  static Color getSuccessColor(BuildContext context) {
    return Colors.green; // You might want to add this to your theme
  }

  static Color getIconColor(BuildContext context) {
    return Colors.black;
  }
}
