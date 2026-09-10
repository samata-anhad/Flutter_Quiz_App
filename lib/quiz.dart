import 'package:flutter/material.dart';
import 'package:test_app/questions_screen.dart';
import 'package:test_app/start_Screen.dart';

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

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'QuestionsScreen';
    });
  }

  @override
  Widget build(context) {
   Widget screenWidget =StartScreen(switchScreen );

    if(activeScreen=='QuestionsScreen'){
   screenWidget=const QuestionsScreen();
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


               child: screenWidget
        ),
      ),
    );
  }
}
