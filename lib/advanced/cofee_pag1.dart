import 'package:awesome/advanced/cofee_tiles.dart';
import 'package:flutter/material.dart';

import 'cofee_types.dart';

class CoffePage1 extends StatefulWidget {
  const CoffePage1({Key? key}) : super(key: key);

  @override
  State<CoffePage1> createState() => _CoffePage1State();
}

class _CoffePage1State extends State<CoffePage1> {
  final List cofeeTypes = [
    ['cappuccino', true],
    ['Late', false],
    ['Espresso', false],
    ['tea', false]
  ];

  void cofeeTypeSelected(index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 12, 12, 12),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(Icons.menu),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.person,
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search,
                    color: Color.fromARGB(255, 154, 138, 138)),
                label: "search",
              ),
              BottomNavigationBarItem(
                icon:
                    Icon(Icons.favorite, color: Color.fromARGB(255, 193, 4, 4)),
                label: "likes",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 230, 229, 242),
                ),
                label: "profile",
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text("Find the best coffee in the world",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sans Serif",
                        color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: const Color.fromARGB(255, 134, 133, 133),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 49, 48, 48),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 49, 48, 48),
                      ),
                    ),
                    hintText: "find your coffee",
                    suffixIcon: const Icon(Icons.search,
                        color: Color.fromARGB(255, 241, 198, 132)),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 32, 32, 32),
                    counterStyle: const TextStyle(
                        color: Color.fromARGB(255, 49, 48, 48), fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.transparent,
                  height: 50,
                  child: ListView.builder(
                      itemCount: cofeeTypes.length,
                      itemBuilder: (context, index) {
                        return CofeeType(
                          name: cofeeTypes[index][0],
                          isSelected: cofeeTypes[index][1],
                          onTap: () {
                            cofeeTypeSelected(index);
                          },
                        );
                      }),
                ),
                Expanded(
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [CofeeTiles(), CofeeTiles()])),
              ],
            ),
          )), // next: const Page2(),
    );
  }
}