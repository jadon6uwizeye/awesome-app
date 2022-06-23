import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Awesome app'), // next: const Page2(),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Card(
        // ignore: avoid_unnecessary_containers
        child: ListView(
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.navigate_before),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page3()));
              },
              child: const Icon(Icons.navigate_next_sharp),
            ),
            Container(
              color: Colors.blueGrey,
              child: Center(
                child: Wrap(
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('assets/cartoon.png', fit: BoxFit.contain),
                    Expanded(
                        child: Container(
                      color: Colors.indigo,
                      padding: const EdgeInsets.all(20),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const Text('This is a card',
                                style: TextStyle(
                                    fontSize: 20,
                                    backgroundColor: Colors.white)),
                            const Text(
                              'This is a card',
                              style: TextStyle(
                                  fontSize: 20, backgroundColor: Colors.green),
                            ),
                            const Text(
                              'This is a card',
                              style: TextStyle(
                                  fontSize: 20, backgroundColor: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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
          title: const Text(
            'My awesome app',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 18, 23)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
          child: const Icon(Icons.navigate_next),
        ),
        body: Center(child: Image.asset('assets/Roads-Untraveled.jpg')));
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.navigate_before),
        ),
        appBar: AppBar(
          title: const Text('Page 3'),
        ),
        body: Container(
            color: Colors.blueGrey,
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.navigate_next),
              ),
              body: Center(
                child: Image.asset('assets/cartoon.png', fit: BoxFit.contain),
              ),
            )));
  }
}
