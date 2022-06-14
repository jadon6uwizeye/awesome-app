import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Awesome app'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
          child: Text(
        'Hello World this is my awesome app',
        style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.indigoAccent),
      )),
      // body: const Center(
      //   child: Text.rich(textSpan(
      //     children:<TextSpan>[
      //       TextSpan(text: "Hello World this is my awesome app",style:
      //       TextStyle( fontStyle: FontStyle.italic))
      //     ]
      //   )),
      // ),
    );
  }
}
