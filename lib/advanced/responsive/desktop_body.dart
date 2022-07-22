import 'package:flutter/material.dart';

class DeskTopBody extends StatelessWidget {
  const DeskTopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Mobile"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.map),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: const Color.fromARGB(255, 2, 65, 52),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ListTile(
                                tileColor: Color.fromARGB(255, 4, 68, 81),
                              ),
                            );
                          }))
                ]),
              ),
              Container(
                width: 200,
                color: const Color.fromARGB(255, 4, 68, 81),
              )
            ],
          ),
        ));
  }
}
