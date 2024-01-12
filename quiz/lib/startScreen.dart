// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // <----------2nd set way to set opacity to image-------->
        Image.asset(
          'assets/images/cloud-computing.png',
          width: 30,
          color: const Color.fromARGB(96, 255, 255, 255),
        ),
        // <----------1st set way to set opacity to image-------->
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/cloud-computing.png',
        //     width: 30,
        //   ),
        // ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            shadowColor: Colors.lightGreen,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
