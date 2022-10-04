import 'dart:collection';

import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {super.key,
      required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen});

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= largeScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < largeScreenSize &&
      MediaQuery.of(context).size.width >= mediumScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // ignore: no_leading_underscores_for_local_identifiers
      if (constraints.maxWidth >= largeScreenSize) {
        return largeScreen;
      } else if (constraints.maxWidth < largeScreenSize &&
          constraints.maxWidth >= mediumScreenSize) {
        return mediumScreen;
      } else {
        return smallScreen;
      }
    });
  }
}
