import 'package:flutter/material.dart';

class DeskTopBody extends StatelessWidget {
  const DeskTopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const items = [
      
    ]
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 159, 167, 173),
        appBar: AppBar(
          title: const Text("Mobile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  color: Color.fromARGB(255, 250, 251, 252),
                  // child as a list of scrollable items
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          'User',
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      const ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      const ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      const ListTile(
                        leading: Icon(Icons.info),
                        title: Text('About'),
                      ),
                      const Divider(
                        color: Colors.black,
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 141, 156, 153),
                        image: DecorationImage(
                            image:
                                NetworkImage("https://picsum.photos/800/320")),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(2.0),
                              child: ListTile(
                                title: Container(
                                  padding: EdgeInsets.all(18),
                                  child: Text(
                                    "Item  ${index + 1}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 77, 78, 79),
                                subtitle: Container(
                                  child: Text(
                                    "Description ${index + 1}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
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
