import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget Mobile;
  final Widget LargeMobile;
  final Widget Tablet;
  final Widget Desktop;

  Responsive(
      {required this.Mobile,
      required this.Desktop,
      required this.LargeMobile,
      required this.Tablet});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isLargeMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1024;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1024) {
      return Desktop;
    } else if (size.width >= 700) {
      return LargeMobile;
    } else if (size.width >= 500) {
      return Tablet;
    } else {
      return Desktop;
    }
  }
}
