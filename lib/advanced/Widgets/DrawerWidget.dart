import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 12, bottom: 20),
        height: MediaQuery.of(context).size.height,
        width: 200,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 175, 176, 177),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        // child as a list of scrollable itemsColor.fromARGB(255, 85, 95, 97)
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 42, 61, 57),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: const ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 197, 196, 196),
              thickness: 1,
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Use'),
            ),
            const Divider(
              color: Color.fromARGB(255, 197, 196, 196),
              thickness: 1,
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const Divider(
              color: Color.fromARGB(255, 197, 196, 196),
              thickness: 1,
            ),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
            const Divider(
              color: Color.fromARGB(255, 197, 196, 196),
              thickness: 1,
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
            const Divider(
              color: Color.fromARGB(255, 197, 196, 196),
              thickness: 1,
            ),
          ],
        ));
  }
}
