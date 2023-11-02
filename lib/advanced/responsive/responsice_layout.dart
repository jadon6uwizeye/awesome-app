import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const ResponsiveLayout(
      {Key? key, required this.largeScreen, required this.smallScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 860) {
          return largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
