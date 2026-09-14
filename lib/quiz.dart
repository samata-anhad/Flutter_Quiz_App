import 'package:flutter/material.dart';
import 'package:test_app/questions_screen.dart';
import 'package:test_app/start_Screen.dart';
import 'package:test_app/data/questions.dart';
import 'package:test_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  //  void switchScreen() {
  //   setState(() {
  //     activeScreen = QuestionsScreen();
  //   });
  // }

  //alternate method(tertiary Insted Of Using Initial State For Addressing Null To It)
  List<String> selectedAnswers = []; //store the selected answers here, we remove the final as after rub out of question the state again comes to empty list of answers
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'QuestionsScreen';
    });
  }

  void chooseAnswers(String answers) {
    selectedAnswers.add(answers); // It is a methiod which will add the values of list (selected answers without reassiging variable)

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'QuestionsScreen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswers);
    }

    if (activeScreen == 'ResultsScreen') {
      screenWidget =  ResultsScreen(choosenAnswer: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 126, 0, 140),
                Color.fromARGB(255, 43, 0, 47),
              ],
            ),
          ),

          //Using Initial Method
          // child: activeScreen,
          //Using Tertiary Method
          // child: activeScreen == 'startScreen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionsScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
