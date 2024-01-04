// ignore_for_file: file_names

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return const Center(
      child: Text(
        'Learn Flutter the fun way!',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
      ),
    );
  }
}
