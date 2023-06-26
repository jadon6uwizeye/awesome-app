import 'package:flutter/material.dart';

class CofeeTiles extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final double price;
  const CofeeTiles(
      {Key? key,
      required this.image,
      required this.name,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
          padding: const EdgeInsets.all(7),
          width: MediaQuery.of(context).size.width / 3,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(137, 56, 56, 56),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      image,
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 3,
                    )),
                const SizedBox(height: 10),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    )),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "\$",
                          style: TextStyle(color: Colors.orange),
                        ),
                        Text(price.toString(),
                            style: const TextStyle(
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
