import 'package:awesome/advanced/cofee_pag1.dart';
import 'package:flutter/material.dart';

import 'advanced/login_page.dart';

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
      debugShowCheckedModeBanner: false,
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
            'Awesome app(PWA)',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 18, 23)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
          child: const Icon(Icons.navigate_next),
        ),
        body: LoginPage());
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 3'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CoffePage1()),
            );
          },
          child: const Icon(Icons.navigate_next_rounded),
        ),
        body: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const ProductBox(
                  name: "name",
                  description: "description",
                  age: "23",
                  image: 'assets/cartoon.png'),
              const ProductBox(
                  name: "name",
                  description: "description",
                  age: "20",
                  image: 'assets/cartoon.png'),
              const ProductBox(
                  name: "name",
                  description: "description",
                  age: "19",
                  image: 'assets/cartoon.png'),
            ]));
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.age,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final String age;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Expanded(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(image, fit: BoxFit.contain),
                Container(
                  color: Colors.indigo,
                  padding: const EdgeInsets.all(10),
                  child: Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Name : $name",
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          description,
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(age),
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //     child: Column(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         // ignore: prefer_const_literals_to_create_immutables
                //         children: <Widget>[
                //       Text(name,
                //           style: const TextStyle(
                //               fontSize: 20, backgroundColor: Colors.white)),
                //     ]))
              ]),
        ),
      ),
    );
  }
}
