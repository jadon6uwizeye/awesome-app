import 'package:flutter/material.dart';

class CofeeType extends StatelessWidget {
  final String name;
  final bool isSelected;
  final Function onTap;

  const CofeeType(
      {Key? key,
      required this.name,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(name,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Sans Serif",
              color: isSelected
                  ? Colors.orange
                  : const Color.fromARGB(255, 238, 236, 236),
            )),
      ),
    );
  }
}
