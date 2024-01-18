import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questionScreen.dart';
import 'package:quiz/resultScreen.dart';
import 'package:quiz/startScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  // 1st approach to move next page
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

//2nd approach to move next page
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(
      () {
        activeScreen = 'question-screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen == 'result-screen';
      });
    }
  }

  @override
  Widget build(content) {
    //3rd approach to move next page
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionScreen();

    //4th approach to move next page
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget ==
          ResultScreen(
            chosenAnswer: selectedAnswer,
          );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 53, 2, 66),
              Color.fromARGB(255, 170, 37, 236)
            ], begin: Alignment.topRight, end: Alignment.bottomRight),
          ),

          // 1st approach to move next page
          // child: activeScreen,

          //2nd approach to move next page
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionScreen(),

          //3rd approach to move next page
          // child: screenWidget,

          //4th approach to move next page
          child: screenWidget,
        ),
      ),
    );
  }
}
