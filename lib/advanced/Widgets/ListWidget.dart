import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 210, 221, 226),
          borderRadius: BorderRadius.circular(20)),
      child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(2),
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 153, 164, 167),
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                color: Colors.transparent,
                child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    // tileColor: Color.fromARGB(255, 4, 68, 81),
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
                              height: MediaQuery.of(context).size.height / 200),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 200),
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
