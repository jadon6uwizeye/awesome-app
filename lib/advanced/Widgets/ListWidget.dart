import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 226, 241, 255),
      child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 153, 164, 167),
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: ListTile(
                    tileColor: Color.fromARGB(255, 4, 68, 81),
                    title: Text(
                      "Content ${index + 1}",
                      style: TextStyle(),
                    ),
                    leading: Text(
                      "${index + 1}",
                      style: TextStyle(),
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description ",
                            style: TextStyle(),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 80),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 80),
                          Text("Lorem ipsum dolor sit amet",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 178, 198, 221))),
                        ],
                      ),
                    )),
              ),
            );
          }),
    );
  }
}
