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
              Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  color: Color.fromARGB(255, 161, 177, 190),
                  // child as a list of scrollable items
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          'User',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      const ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      const ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      const ListTile(
                        leading: Icon(Icons.info),
                        title: Text('About'),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      const ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                      ),
                    ],
                  )),
              Expanded(
                child: Column(children: [
                  AspectRatio(
                    aspectRatio: 16 / 6,
                    child: Container(
                      color: Color.fromARGB(255, 141, 156, 153),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(2.0),
                              child: ListTile(
                                title: Text(
                                  "Item  ${index + 1}",
                                  style: TextStyle(color: Colors.white),
                                ),
                                tileColor: Color.fromARGB(255, 77, 78, 79),
                              ),
                            );
                          }))
                ]),
              ),
            ],
          ),
        ));
  }
}
