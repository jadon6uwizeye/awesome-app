import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Mobile"),
        ),
        drawer: Container(
            width: 250,

            // child as a list of scrollable itemsColor.fromARGB(255, 85, 95, 97)
            child: const Column(
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            // add drawer menu
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
