import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Mobile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
        ));
  }
}
