import 'package:awesome/advanced/responsive/responsice_layout.dart';
import 'package:flutter/material.dart';
import 'package:awesome/advanced/responsive/mobile_body.dart';
import 'package:awesome/advanced/responsive/desktop_body.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        largeScreen: DeskTopBody(),
        smallScreen: MobileBody(),
      ),
    );
  }
}
