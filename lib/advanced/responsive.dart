import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: mediaQuery.size.width > 600
          ? Color.fromARGB(255, 120, 153, 169)
          : Color.fromARGB(255, 242, 199, 199),
      body: Center(
        child: Text(mediaQuery.size.toString()),
      ),
    );
  }
}
