import 'package:awesome/advanced/Widgets/DrawerWidget.dart';
import 'package:awesome/advanced/Widgets/ListWidget.dart';
import 'package:flutter/material.dart';

class DeskTopBody extends StatelessWidget {
  const DeskTopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const items = [];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Desktop PWA"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              DrawerWidget(),
              Expanded(
                child: Column(children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: AspectRatio(
                      aspectRatio: 18 / 6,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              // make image fit
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://picsum.photos/1400/520")),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: ListWidget())
                ]),
              ),
              Expanded(child: ListWidget())
            ],
          ),
        ));
  }
}
