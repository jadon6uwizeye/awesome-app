import 'package:flutter/material.dart';

class CofeeTiles extends StatelessWidget {
  const CofeeTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
          padding: const EdgeInsets.all(10),
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(137, 56, 56, 56),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'lib/images/cofee.jpg',
                  // height: 500,
                )),
            const Text(
              'Cappuccino',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("With oat milk",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "\$",
                      style: TextStyle(color: Colors.orange),
                    ),
                    Text("1.99",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: const Icon(
                    // Icons.add_shopping_cart,
                    Icons.add,
                  ),
                ),
              ],
            )
          ])),
    );
  }
}
