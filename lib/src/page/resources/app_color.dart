import 'package:flutter/material.dart';

class AppColor {
  static Color getPrimary(BuildContext context) => Theme.of(context).colorScheme.primary;
  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).scaffoldBackgroundColor;
  }

  static Color getTextColor(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.color ?? Colors.white;
  }

  static Color getCardColor(BuildContext context) {
    return Theme.of(context).cardColor;
  }

  static Color getDividerColor(BuildContext context) {
    return Theme.of(context).dividerColor;
  }

  static Color getErrorColor(BuildContext context) {
    return Theme.of(context).colorScheme.error;
  }

  static Color getSuccessColor(BuildContext context) {
    return Colors.green; // You might want to add this to your theme
  }

  static Color getIconColor(BuildContext context) {
    return Theme.of(context).iconTheme.color ?? Colors.white;
  }
}
