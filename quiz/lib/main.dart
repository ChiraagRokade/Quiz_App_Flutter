import 'package:flutter/material.dart';
import 'package:quiz/startScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 53, 2, 66),
              Color.fromARGB(255, 170, 37, 236)
            ], begin: Alignment.topRight, end: Alignment.bottomRight),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
