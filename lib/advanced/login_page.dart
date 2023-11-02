import 'package:awesome/advanced/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'map/map.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 242, 244),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const MapScreen(),
          //     ));
        },
        child: const Icon(Icons.map),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.android, size: 100, color: Colors.blueGrey),
              const SizedBox(
                height: 40,
              ),
              Text(
                "HELLO AGAIN",
                style: GoogleFonts.bebasNeue(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 17, 18, 23),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Welcome back you've been missed",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Sans Serif'),
              ),
              const SizedBox(height: 40),
              Container(
                width: 420,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Email",
                    // filled: true,
                    // fillColor: Color.fromARGB(255, 254, 254, 255),
                    labelStyle:
                        TextStyle(fontSize: 12, fontFamily: 'Sans Serif'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 420,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "password",
                      labelStyle:
                          TextStyle(fontSize: 12, fontFamily: 'Sans Serif'),
                    )),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Responsive(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 260,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 28, 6, 118),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Don't have an account?",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sans Serif'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
